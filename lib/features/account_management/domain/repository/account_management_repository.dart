import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

abstract class AccountManagementRepository {
  Future<Either<Failure, bool>> logIn();
}
