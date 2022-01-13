part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const AuthorizationState._();
  const factory AuthorizationState({
    int? counter,
  }) = _AuthorizationState;

  static AuthorizationState get initial {
    return AuthorizationState(
      counter: 0,
    );
  }
}
