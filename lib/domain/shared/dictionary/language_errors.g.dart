// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageErrors _$_$_LanguageErrorsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageErrors', json, () {
    final val = _$_LanguageErrors(
      invalidValue: $checkedConvert(json, 'not_valid', (v) => v as String?),
      toShort: $checkedConvert(json, 'to_short', (v) => v as String?),
      toLong: $checkedConvert(json, 'to_long', (v) => v as String?),
      invalidPassword:
          $checkedConvert(json, 'invalid_password', (v) => v as String?),
      nameValidation:
          $checkedConvert(json, 'name_validation', (v) => v as String?),
      instagramValidation:
          $checkedConvert(json, 'instagram_validation', (v) => v as String?),
      phoneValidation:
          $checkedConvert(json, 'phone_validation', (v) => v as String?),
      whatsappValidation:
          $checkedConvert(json, 'whatsapp_validation', (v) => v as String?),
      locationValidation:
          $checkedConvert(json, 'location_validation', (v) => v as String?),
      websiteValidation:
          $checkedConvert(json, 'website_validation', (v) => v as String?),
      roleValidation:
          $checkedConvert(json, 'role_validation', (v) => v as String?),
      companyValidation:
          $checkedConvert(json, 'company_validation', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'invalidValue': 'not_valid',
    'toShort': 'to_short',
    'toLong': 'to_long',
    'invalidPassword': 'invalid_password',
    'nameValidation': 'name_validation',
    'instagramValidation': 'instagram_validation',
    'phoneValidation': 'phone_validation',
    'whatsappValidation': 'whatsapp_validation',
    'locationValidation': 'location_validation',
    'websiteValidation': 'website_validation',
    'roleValidation': 'role_validation',
    'companyValidation': 'company_validation'
  });
}

Map<String, dynamic> _$_$_LanguageErrorsToJson(_$_LanguageErrors instance) =>
    <String, dynamic>{
      'not_valid': instance.invalidValue,
      'to_short': instance.toShort,
      'to_long': instance.toLong,
      'invalid_password': instance.invalidPassword,
      'name_validation': instance.nameValidation,
      'instagram_validation': instance.instagramValidation,
      'phone_validation': instance.phoneValidation,
      'whatsapp_validation': instance.whatsappValidation,
      'location_validation': instance.locationValidation,
      'website_validation': instance.websiteValidation,
      'role_validation': instance.roleValidation,
      'company_validation': instance.companyValidation,
    };
