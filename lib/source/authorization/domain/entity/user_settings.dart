import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

@freezed
class UserSettings with _$UserSettings {
  const UserSettings._();
  @JsonSerializable()
  const factory UserSettings({
    @JsonKey(name: 'language') String? language,
  }) = _UserSettings;

  factory UserSettings.mock() => UserSettings(language: 'English');

  factory UserSettings.fromJson(Map<String, dynamic> json) => _$UserSettingsFromJson(json);
}
