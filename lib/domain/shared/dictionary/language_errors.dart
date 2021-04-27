import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_errors.freezed.dart';
part 'language_errors.g.dart';

@freezed
class LanguageErrors with _$LanguageErrors {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageErrors({
    @JsonKey(name: 'not_valid') String? invalidValue,
    @JsonKey(name: 'to_short') String? toShort,
    @JsonKey(name: 'to_long') String? toLong,
    @JsonKey(name: 'invalid_password') String? invalidPassword,
    @JsonKey(name: 'name_validation') String? nameValidation,
    @JsonKey(name: 'instagram_validation') String? instagramValidation,
    @JsonKey(name: 'phone_validation') String? phoneValidation,
    @JsonKey(name: 'whatsapp_validation') String? whatsappValidation,
    @JsonKey(name: 'location_validation') String? locationValidation,
    @JsonKey(name: 'website_validation') String? websiteValidation,
    @JsonKey(name: 'role_validation') String? roleValidation,
    @JsonKey(name: 'company_validation') String? companyValidation,
  }) = _LanguageErrors;

  factory LanguageErrors.fromJson(Map<String, dynamic> json) => _$LanguageErrorsFromJson(json);
}
