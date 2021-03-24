// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageLogin _$_$_LanguageLoginFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageLogin', json, () {
    final val = _$_LanguageLogin(
      emailHint: $checkedConvert(json, 'email_hint', (v) => v as String?),
      passwordHint: $checkedConvert(json, 'password_hint', (v) => v as String?),
      title: $checkedConvert(json, 'title', (v) => v as String?),
      button: $checkedConvert(json, 'button', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'emailHint': 'email_hint',
    'passwordHint': 'password_hint'
  });
}

Map<String, dynamic> _$_$_LanguageLoginToJson(_$_LanguageLogin instance) =>
    <String, dynamic>{
      'email_hint': instance.emailHint,
      'password_hint': instance.passwordHint,
      'title': instance.title,
      'button': instance.button,
    };
