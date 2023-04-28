import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../../../core/platform/shared_prefs.dart';
import '../../../../../core/utils/index.dart';
import '../../../domain/usercases/log_in_usercase.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> with Utils {
  final LogInUserCase _logInUserCase;
  final SharedPreferencesManager sharedPreferencesManager;

  LogInBloc( this._logInUserCase, this.sharedPreferencesManager) : super(LogInInitial()) {
    on<LogInSendEvent>(_onSingIn);
  }

  void _onSingIn(LogInSendEvent event, Emitter<LogInState> emit) async {
    emit(LogInSentState());
    final resp = await _logInUserCase(Params());
    emit(resp.fold((l) {
      showException(message: l.message);
      return LogInFailState();
    }, (r) {

      return LogInSuccessState();
    }));
  }
}
