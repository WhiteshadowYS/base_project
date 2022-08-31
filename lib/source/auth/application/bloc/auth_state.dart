part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  factory AuthState.initial() = _InitialAuthState;
  factory AuthState.loggined() = _LogginedAuthState;
}
