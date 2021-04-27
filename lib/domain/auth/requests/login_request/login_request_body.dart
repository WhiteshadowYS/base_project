import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body_validator.dart';

part 'login_request_body.freezed.dart';
part 'login_request_body.g.dart';

@freezed
class LoginRequestBody with _$LoginRequestBody {
  const LoginRequestBody._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LoginRequestBody({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _LoginRequestBody;

  LoginRequestBodyValidator get validator => LoginRequestBodyValidator(this, dependencyContainer!.get<IValidator>());

  factory LoginRequestBody.fromJson(Map<String, dynamic> json) => _$LoginRequestBodyFromJson(json);
}
