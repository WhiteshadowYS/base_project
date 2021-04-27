// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_terms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageTerms _$_$_LanguageTermsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageTerms', json, () {
    final val = _$_LanguageTerms(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      content: $checkedConvert(json, 'content', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LanguageTermsToJson(_$_LanguageTerms instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
    };
