part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(LoginRequestBody body) = _Login;
  const factory AuthEvent.register(RegistrationRequestBody body) = _Register;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.recoveryPassword() = _RecoveryPassword;
  const factory AuthEvent.fogotPassword({required ForgotPasswordBody body}) = _ForgotPassword;
}
