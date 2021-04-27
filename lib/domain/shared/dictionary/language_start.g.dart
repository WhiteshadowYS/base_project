// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_start.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageStart _$_$_LanguageStartFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageStart', json, () {
    final val = _$_LanguageStart(
      content: $checkedConvert(json, 'content', (v) => v as String?),
      footnoteText: $checkedConvert(json, 'footnote_text', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'footnoteText': 'footnote_text'});
}

Map<String, dynamic> _$_$_LanguageStartToJson(_$_LanguageStart instance) =>
    <String, dynamic>{
      'content': instance.content,
      'footnote_text': instance.footnoteText,
    };
