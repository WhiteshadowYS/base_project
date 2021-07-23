// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettings _$_$_UserSettingsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_UserSettings', json, () {
    final val = _$_UserSettings(
      language: $checkedConvert(json, 'language', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_UserSettingsToJson(_$_UserSettings instance) =>
    <String, dynamic>{
      'language': instance.language,
    };
