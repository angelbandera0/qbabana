import 'package:dartz/dartz.dart';
import 'package:qbabana/features/account_management/data/model/category.dart';

import '../../../../core/failure/failure.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category?>>> getCategories();
  Future<Either<Failure, bool>> addCategories(String name);
}
