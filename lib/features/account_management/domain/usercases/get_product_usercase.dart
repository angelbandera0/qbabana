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

class GetProductUserCase implements UserCase<List<Product?>, NoParams> {
  final ProductRepository repository;

  GetProductUserCase(this.repository);

  @override
  Future<Either<Failure, List<Product?>>> call(NoParams params) async {
    return await repository.getProducts();
  }
}

class Params extends Equatable {

  Params();

  @override
  List<Object> get props => [];
}
