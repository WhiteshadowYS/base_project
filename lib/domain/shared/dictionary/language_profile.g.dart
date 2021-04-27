// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageProfile _$_$_LanguageProfileFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageProfile', json, () {
    final val = _$_LanguageProfile(
      title: $checkedConvert(json, 'title', (v) => v as String?),
      statusVerified:
          $checkedConvert(json, 'status_verified', (v) => v as String?),
      statusNotVerified:
          $checkedConvert(json, 'status_not_verified', (v) => v as String?),
      statusRejected:
          $checkedConvert(json, 'status_rejected', (v) => v as String?),
      contactInfoTitle:
          $checkedConvert(json, 'contact_info_title', (v) => v as String?),
      changeImageText:
          $checkedConvert(json, 'change_image_text', (v) => v as String?),
      vefify: $checkedConvert(json, 'vefify', (v) => v as String?),
      vefifyText: $checkedConvert(json, 'vefify_text', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'statusVerified': 'status_verified',
    'statusNotVerified': 'status_not_verified',
    'statusRejected': 'status_rejected',
    'contactInfoTitle': 'contact_info_title',
    'changeImageText': 'change_image_text',
    'vefifyText': 'vefify_text'
  });
}

Map<String, dynamic> _$_$_LanguageProfileToJson(_$_LanguageProfile instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status_verified': instance.statusVerified,
      'status_not_verified': instance.statusNotVerified,
      'status_rejected': instance.statusRejected,
      'contact_info_title': instance.contactInfoTitle,
      'change_image_text': instance.changeImageText,
      'vefify': instance.vefify,
      'vefify_text': instance.vefifyText,
    };
