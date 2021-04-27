import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body_validator.dart';

part 'registration_request_body.freezed.dart';
part 'registration_request_body.g.dart';

@freezed
class RegistrationRequestBody with _$RegistrationRequestBody {
  const RegistrationRequestBody._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory RegistrationRequestBody({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone_number') String? phone,
    @JsonKey(name: 'password') String? password,
  }) = _RegistrationRequestBody;

  RegistrationRequestBodyValidator get validator => RegistrationRequestBodyValidator(this, dependencyContainer!.get<IValidator>());

  factory RegistrationRequestBody.fromJson(Map<String, dynamic> json) => _$RegistrationRequestBodyFromJson(json);
}
