import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:qbabana/features/account_management/domain/repository/category_repository.dart';
import 'package:qbabana/features/account_management/presentation/bloc/category/category_bloc.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usercases/usercases.dart';
import '../../data/model/category.dart';
import '../repository/account_management_repository.dart';

class AddCategoryUserCase implements UserCase<bool, Params> {
  final CategoryRepository repository;

  AddCategoryUserCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await repository.addCategories(params.name);
  }
}

class Params extends Equatable {
  String name;
  Params(this.name);

  @override
  List<Object> get props => [];
}
