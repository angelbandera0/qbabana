import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usercases/usercases.dart';
import '../repository/account_management_repository.dart';

class LogInUserCase implements UserCase<bool, Params> {
  final AccountManagementRepository repository;

  LogInUserCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return await repository.logIn();
  }
}

class Params extends Equatable {

  Params();

  @override
  List<Object> get props => [];
}
