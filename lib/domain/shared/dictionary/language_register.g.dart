// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageRegister _$_$_LanguageRegisterFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageRegister', json, () {
    final val = _$_LanguageRegister(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      footnoteButton:
          $checkedConvert(json, 'footnote_button', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'footnoteButton': 'footnote_button'});
}

Map<String, dynamic> _$_$_LanguageRegisterToJson(
        _$_LanguageRegister instance) =>
    <String, dynamic>{
      'title': instance.title,
      'footnote_button': instance.footnoteButton,
    };
