// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageSettings _$_$_LanguageSettingsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageSettings', json, () {
    final val = _$_LanguageSettings(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      chooseLanguage:
          $checkedConvert(json, 'choose_language', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'chooseLanguage': 'choose_language'});
}

Map<String, dynamic> _$_$_LanguageSettingsToJson(
        _$_LanguageSettings instance) =>
    <String, dynamic>{
      'title': instance.title,
      'choose_language': instance.chooseLanguage,
    };
