// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_footnote_buttons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageFootnoteButtons _$_$_LanguageFootnoteButtonsFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageFootnoteButtons', json, () {
    final val = _$_LanguageFootnoteButtons(
      terms: $checkedConvert(json, 'terms', (v) => v as String?),
      login: $checkedConvert(json, 'login', (v) => v as String?),
      remindMe: $checkedConvert(json, 'remind_me', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {'remindMe': 'remind_me'});
}

Map<String, dynamic> _$_$_LanguageFootnoteButtonsToJson(
        _$_LanguageFootnoteButtons instance) =>
    <String, dynamic>{
      'terms': instance.terms,
      'login': instance.login,
      'remind_me': instance.remindMe,
    };
