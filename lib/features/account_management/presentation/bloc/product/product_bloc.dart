import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qbabana/core/usercases/usercases.dart';
import '../../../../../core/platform/shared_prefs.dart';
import '../../../../../core/utils/index.dart';
import '../../../data/model/category.dart';
import '../../../data/model/product.dart';
import '../../../domain/usercases/add_product_usercase.dart';
import '../../../domain/usercases/add_product_usercase.dart' as AddProduct;
import '../../../domain/usercases/get_product_usercase.dart';
import '../../../domain/usercases/get_product_usercase.dart' as GetProducts;


part 'product_event.dart';

part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> with Utils {
  final GetProductUserCase _getProductUserCase;
  final AddProductUserCase _addProductUserCase;
  final SharedPreferencesManager sharedPreferencesManager;
  final List<Product?> products = [];

  ProductBloc( this._getProductUserCase, this._addProductUserCase, this.sharedPreferencesManager) : super(ProductInitial()) {
    on<GetProductEvent>(_getProducts);
    on<AddProductEvent>(_addProduct);
  }

  void _getProducts(GetProductEvent event, Emitter<ProductState> emit) async {
    emit(GetProductSend());
    final resp = await _getProductUserCase(NoParams());
    emit(resp.fold((l) {
      return GetProductError();
    }, (r) {
      products.clear();
      products.addAll(r);
      return GetProductSuccess();

    }));
  }

  void _addProduct(AddProductEvent event, Emitter<ProductState> emit) async {
    emit(AddProductSend());
    final resp = await _addProductUserCase(AddProduct.Params(event.product));
    emit(resp.fold((l) {
      return AddProductError();
    }, (r) {
      return AddProductSuccess();

    }));
  }}
