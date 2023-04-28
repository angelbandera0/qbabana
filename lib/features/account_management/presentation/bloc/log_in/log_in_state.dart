part of 'log_in_bloc.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {}

class LogInSentState extends LogInState {}

class LogInSuccessState extends LogInState {}
class LogInSuccessCompanyState extends LogInState {}
class LogInSuccessDealershipState extends LogInState {}
class LogInChangePassword extends LogInState {}

class LogInRememberState extends LogInState {}

class LogInFailState extends LogInState {}
