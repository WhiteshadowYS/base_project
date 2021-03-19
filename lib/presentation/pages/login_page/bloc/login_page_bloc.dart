import 'dart:async';

import 'package:base_project_template/domain/services/pokemon_service.dart';
import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project_template/domain/blocs/application/app_router.dart';
import 'package:base_project_template/data/managers/dialog_manager/dialog_manager.dart';
import 'package:base_project_template/domain/dialogs/error_dialog.dart/error_dialog.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';
part 'login_page_bloc.freezed.dart';

@injectable
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc() : super(_Initial());

  Logger get _logger => Logger('$runtimeType');

  @override
  Stream<LoginPageState> mapEventToState(
    LoginPageEvent event,
  ) async* {
    if (event is _Login) {
      yield* _loginEvent(event);
    }
  }

  Stream<LoginPageState> _loginEvent(_Login event) async* {
    try {
      yield LoginPageState.loading();

      await Future.delayed(Duration(seconds: 2));

      await router.pushAndRemoveUntil(HomePageRoute(), predicate: (_) => false);
    } catch (e) {
      _logger.warning('Login Failed, error: $e');
      await DialogManager.instance.show(
        ErrorDialog(message: e.toString()),
      );
    }
  }
}
