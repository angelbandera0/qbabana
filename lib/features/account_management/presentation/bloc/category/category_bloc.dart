import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qbabana/core/usercases/usercases.dart';
import 'package:qbabana/features/account_management/domain/usercases/get_category_usercase.dart';
import 'package:qbabana/features/account_management/domain/usercases/get_category_usercase.dart' as GetCategory;
import '../../../../../core/platform/shared_prefs.dart';
import '../../../../../core/utils/index.dart';
import '../../../data/model/category.dart';
import '../../../domain/usercases/add_category_usercase.dart';
import '../../../domain/usercases/add_category_usercase.dart' as AddCategory;


part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> with Utils {
  final GetCategoryUserCase _getCategoryUserCase;
  final AddCategoryUserCase _addCategoryUserCase;
  final SharedPreferencesManager sharedPreferencesManager;
  final List<Category?> categories = [];

  CategoryBloc( this._getCategoryUserCase, this._addCategoryUserCase, this.sharedPreferencesManager) : super(CategoryInitial()) {
    on<GetCategorysEvent>(_getCategory);
    on<AddCategorysEvent>(_addCategory);
  }

  void _getCategory(GetCategorysEvent event, Emitter<CategoryState> emit) async {
    emit(GetCategorySend());
    final resp = await _getCategoryUserCase(NoParams());
    emit(resp.fold((l) {
      return GetCategoryError();
    }, (r) {
      categories.clear();
      categories.addAll(r);
      return GetCategorySuccess();

    }));
  }

  void _addCategory(AddCategorysEvent event, Emitter<CategoryState> emit) async {
    emit(AddCategorySend());
    final resp = await _addCategoryUserCase(AddCategory.Params(event.name));
    emit(resp.fold((l) {
      return AddCategoryError();
    }, (r) {
      return AddCategorySuccess();

    }));
  }}
