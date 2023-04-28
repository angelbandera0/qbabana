import 'package:dartz/dartz.dart';

import '../../../../core/failure/exception.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/platform/shared_prefs.dart';
import '../../domain/repository/account_management_repository.dart';

class AccountManagementRepositoryImpl extends AccountManagementRepository {
  final SharedPreferencesManager sharedPreferencesManager;
  AccountManagementRepositoryImpl( this.sharedPreferencesManager,
      );

  @override
  Future<Either<Failure, bool>> logIn(
      ) async {
    try {

      final res = false;//await _api.logIn(logInEntity);

      return Right(res);
    } catch (ex) {
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
