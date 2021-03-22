part of 'login_page_bloc.dart';

@freezed
abstract class LoginPageState with _$LoginPageState {
  const factory LoginPageState.initial() = _Initial;
  const factory LoginPageState.loading() = _Loading;
  const factory LoginPageState.logined(List<String> data) = _Logined;
  const factory LoginPageState.error(String error) = _Error;
}
