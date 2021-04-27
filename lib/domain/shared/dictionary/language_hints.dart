import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_hints.freezed.dart';
part 'language_hints.g.dart';

@freezed
class LanguageHints with _$LanguageHints {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageHints({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'whatsapp') String? whatsapp,
    @JsonKey(name: 'instagram') String? instagram,
    @JsonKey(name: 'website') String? website,
    @JsonKey(name: 'event_name') String? eventName,
    @JsonKey(name: 'description') String? description,
  }) = _LanguageHints;

  factory LanguageHints.fromJson(Map<String, dynamic> json) => _$LanguageHintsFromJson(json);
}
