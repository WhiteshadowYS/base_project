import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_settings.freezed.dart';
part 'language_settings.g.dart';

@freezed
class LanguageSettings with _$LanguageSettings {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageSettings({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'choose_language') String? chooseLanguage,
  }) = _LanguageSettings;

  factory LanguageSettings.fromJson(Map<String, dynamic> json) => _$LanguageSettingsFromJson(json);
}
