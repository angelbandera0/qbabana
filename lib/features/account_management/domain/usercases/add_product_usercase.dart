import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qbabana/features/account_management/domain/repository/category_repository.dart';
import 'package:qbabana/features/account_management/presentation/bloc/category/category_bloc.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usercases/usercases.dart';
import '../../data/model/category.dart';
import '../../data/model/product.dart';
import '../repository/account_management_repository.dart';
import '../repository/product_repository.dart';

class AddProductUserCase implements UserCase<bool, Params> {
  final ProductRepository repository;

  AddProductUserCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await repository.addProduct(params.product);
  }
}

class Params extends Equatable {
  Product product;
  Params(this.product);

  @override
  List<Object> get props => [];
}
