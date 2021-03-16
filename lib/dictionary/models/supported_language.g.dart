// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supported_language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportedLanguage _$_$_SupportedLanguageFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SupportedLanguage', json, () {
    final val = _$_SupportedLanguage(
      languageCode: $checkedConvert(json, 'language_code', (v) => v as String?),
      language: $checkedConvert(
          json,
          'language',
          (v) =>
              v == null ? null : Language.fromJson(v as Map<String, dynamic>)),
      isSelected:
          $checkedConvert(json, 'is_selected', (v) => v as bool?) ?? false,
    );
    return val;
  }, fieldKeyMap: const {
    'languageCode': 'language_code',
    'isSelected': 'is_selected'
  });
}

Map<String, dynamic> _$_$_SupportedLanguageToJson(
        _$_SupportedLanguage instance) =>
    <String, dynamic>{
      'language_code': instance.languageCode,
      'language': instance.language?.toJson(),
      'is_selected': instance.isSelected,
    };
