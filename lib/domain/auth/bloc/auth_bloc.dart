import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/domain/auth/auth_service.dart';
import 'package:base_project/common/presentors/loader/i_loader_presenter.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ILoaderPresenter _loader;
  final AuthService _authService;

  AuthBloc(
    this._loader,
    this._authService,
  ) : super(AuthState());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is _Login) {
      yield* _login(event);
    }

    if (event is _Register) {
      yield* _register(event);
    }

    if (event is _Logout) {
      yield* _logout(event);
    }

    if (event is _RecoveryPassword) {
      yield* _passwordRecovery(event);
    }

    if (event is _ForgotPassword) {
      yield* _forgotPassword(event);
    }
  }

  Stream<AuthState> _login(_Login event) async* {}

  Stream<AuthState> _logout(_Logout event) async* {}

  Stream<AuthState> _register(_Register event) async* {
    _loader.start();
    final response = await _authService.register(event.body);
    _loader.stop();

    if (response != null && (response.status ?? true)) {
      final LoginRequestBody body = LoginRequestBody(
        email: event.body.email,
        password: event.body.password,
      );

      yield* _login(_Login(body));
    }
  }

  Stream<AuthState> _passwordRecovery(_RecoveryPassword event) async* {}

  Stream<AuthState> _forgotPassword(_ForgotPassword event) async* {}
}
