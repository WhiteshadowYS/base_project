// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageHome _$_$_LanguageHomeFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageHome', json, () {
    final val = _$_LanguageHome(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      body: $checkedConvert(json, 'body', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LanguageHomeToJson(_$_LanguageHome instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
