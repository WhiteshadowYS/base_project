// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageLogin _$_$_LanguageLoginFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageLogin', json, () {
    final val = _$_LanguageLogin(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      footnoteText: $checkedConvert(json, 'footnote_text', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'footnoteText': 'footnote_text'});
}

Map<String, dynamic> _$_$_LanguageLoginToJson(_$_LanguageLogin instance) =>
    <String, dynamic>{
      'title': instance.title,
      'footnote_text': instance.footnoteText,
    };
