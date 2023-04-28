part of 'log_in_bloc.dart';

@immutable
abstract class LogInEvent {}

class LogInRememberEvent extends LogInEvent {}

class LogInSendEvent extends LogInEvent {
  final String password;

  LogInSendEvent( this.password);
}
