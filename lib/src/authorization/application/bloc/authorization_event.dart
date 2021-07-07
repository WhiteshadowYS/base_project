part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> with _$AuthorizationEvent {
  @With(LoginEvent)
  const factory AuthorizationEvent.login(LoginData data) = _Login;

  @With(LogoutEvent)
  const factory AuthorizationEvent.logout() = _Logout;

  @With(RegisterEvent)
  const factory AuthorizationEvent.register(RegistrationData data) = _Register;
}
