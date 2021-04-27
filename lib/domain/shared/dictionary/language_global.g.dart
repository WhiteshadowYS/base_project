// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageGlobal _$_$_LanguageGlobalFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageGlobal', json, () {
    final val = _$_LanguageGlobal(
      errorTitle: $checkedConvert(json, 'error_title', (v) => v as String?),
      notVerefiedDialog:
          $checkedConvert(json, 'not_verefied_dialog', (v) => v as String?),
      notificationTitle:
          $checkedConvert(json, 'notification_title', (v) => v as String?),
      yes: $checkedConvert(json, 'yes', (v) => v as String?),
      no: $checkedConvert(json, 'no', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'errorTitle': 'error_title',
    'notVerefiedDialog': 'not_verefied_dialog',
    'notificationTitle': 'notification_title'
  });
}

Map<String, dynamic> _$_$_LanguageGlobalToJson(_$_LanguageGlobal instance) =>
    <String, dynamic>{
      'error_title': instance.errorTitle,
      'not_verefied_dialog': instance.notVerefiedDialog,
      'notification_title': instance.notificationTitle,
      'yes': instance.yes,
      'no': instance.no,
    };
