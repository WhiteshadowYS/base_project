// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Language', json, () {
    final val = _$_Language(
      code: $checkedConvert(json, 'code', (v) => v as String),
      login: $checkedConvert(json, 'login',
          (v) => LanguageLogin.fromJson(v as Map<String, dynamic>)),
      global: $checkedConvert(json, 'global',
          (v) => LanguageGlobal.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'code': instance.code,
      'login': instance.login.toJson(),
      'global': instance.global.toJson(),
    };
