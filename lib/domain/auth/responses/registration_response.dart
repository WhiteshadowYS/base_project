import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response.freezed.dart';
part 'registration_response.g.dart';

@freezed
class RegistrationResponse with _$RegistrationResponse {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory RegistrationResponse({
    @JsonKey(name: 'created') bool? status,
  }) = _RegistrationResponse;

  factory RegistrationResponse.mock() => RegistrationResponse(status: true);

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) => _$RegistrationResponseFromJson(json);
}
