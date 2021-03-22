part of 'login_page_bloc.dart';

@freezed
abstract class LoginPageEvent with _$LoginPageEvent {
  const factory LoginPageEvent.started() = _Started;
  const factory LoginPageEvent.login() = _Login;
}
