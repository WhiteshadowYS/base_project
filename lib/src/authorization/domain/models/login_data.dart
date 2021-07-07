import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data.freezed.dart';
part 'login_data.g.dart';

@freezed
class LoginData with _$LoginData {
  const LoginData._();
  @JsonSerializable()
  const factory LoginData({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _LoginData;

  factory LoginData.mock() => LoginData(email: 'test@gmail.com', password: '123456Test');

  factory LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);
}
