import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qbabana/features/account_management/domain/repository/category_repository.dart';
import 'package:qbabana/features/account_management/presentation/bloc/category/category_bloc.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usercases/usercases.dart';
import '../../data/model/category.dart';
import '../repository/account_management_repository.dart';

class GetCategoryUserCase implements UserCase<List<Category?>, NoParams> {
  final CategoryRepository repository;

  GetCategoryUserCase(this.repository);

  @override
  Future<Either<Failure, List<Category?>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}

class Params extends Equatable {

  Params();

  @override
  List<Object> get props => [];
}
