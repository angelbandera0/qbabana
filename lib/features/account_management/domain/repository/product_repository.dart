import 'package:dartz/dartz.dart';
import 'package:qbabana/features/account_management/data/model/category.dart';
import 'package:qbabana/features/account_management/data/model/product.dart';

import '../../../../core/failure/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product?>>> getProducts();
  Future<Either<Failure, bool>> addProduct(Product p);
}
