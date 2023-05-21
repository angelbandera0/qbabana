import 'package:dartz/dartz.dart';
import 'package:isar/isar.dart';
import 'package:qbabana/core/platform/isardb.dart';
import 'package:qbabana/features/account_management/data/model/category.dart';

import '../../../../core/failure/exception.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/platform/shared_prefs.dart';
import '../../domain/repository/account_management_repository.dart';
import '../../domain/repository/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final SharedPreferencesManager sharedPreferencesManager;
  final IsarDB _isarDB;
  CategoryRepositoryImpl( this.sharedPreferencesManager,this._isarDB
      );


  @override
  Future<Either<Failure, List<Category?>>> getCategories() async{
    try {

      final res = await _isarDB.isar.categorys.where().findAll();
      print(res.length);
      return Right(res);
    } catch (ex) {
      print(ex.toString());
      if (ex is ServerException) {
        return Left(ServerFailure(ex.message));
      } else if (ex is NotFoundException) {
        return Left(NotFoundLoginFailure());
      } else if (ex is UnauthorizedException) {
        return Left(UnauthorizedLoginFailure());
      } else {
        return Left(OtherFailure());
      }

    }
  }

  @override
  Future<Either<Failure, bool>> addCategories(String name) async{
    try {
      print(name);
      Category c = Category();
      c.name=name;
      c.createdAt= DateTime.now();
      c.updatedAt= DateTime.now();

      await _isarDB.isar.writeTxn(() async {
          await _isarDB.isar.categorys.put(c);
      });
      print(_isarDB.isar.categorys.where().findAllSync().length);

      return Right(true);
    } catch (ex) {
      print(ex.toString());
      if (ex is ServerException) {
        return Left(ServerFailure(ex.message));
      } else if (ex is NotFoundException) {
        return Left(NotFoundLoginFailure());
      } else if (ex is UnauthorizedException) {
        return Left(UnauthorizedLoginFailure());
      } else {
        return Left(OtherFailure());
      }

    }
  }
}
