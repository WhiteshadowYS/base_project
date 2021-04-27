import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body_validator.dart';

part 'forgot_password_body.freezed.dart';
part 'forgot_password_body.g.dart';

@freezed
class ForgotPasswordBody with _$ForgotPasswordBody {
  const ForgotPasswordBody._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory ForgotPasswordBody({
    @JsonKey(name: 'email') String? email,
  }) = _ForgotPasswordBody;

  ForgotPasswordBodyValidator get validator => ForgotPasswordBodyValidator(this, dependencyContainer!.get<IValidator>());

  factory ForgotPasswordBody.fromJson(Map<String, dynamic> json) => _$ForgotPasswordBodyFromJson(json);
}
