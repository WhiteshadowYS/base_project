// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_hints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageHints _$_$_LanguageHintsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LanguageHints', json, () {
    final val = _$_LanguageHints(
      role: $checkedConvert(json, 'role', (v) => v as String?),
      firstName: $checkedConvert(json, 'first_name', (v) => v as String?),
      lastName: $checkedConvert(json, 'last_name', (v) => v as String?),
      email: $checkedConvert(json, 'email', (v) => v as String?),
      password: $checkedConvert(json, 'password', (v) => v as String?),
      companyName: $checkedConvert(json, 'company_name', (v) => v as String?),
      location: $checkedConvert(json, 'location', (v) => v as String?),
      phone: $checkedConvert(json, 'phone', (v) => v as String?),
      whatsapp: $checkedConvert(json, 'whatsapp', (v) => v as String?),
      instagram: $checkedConvert(json, 'instagram', (v) => v as String?),
      website: $checkedConvert(json, 'website', (v) => v as String?),
      eventName: $checkedConvert(json, 'event_name', (v) => v as String?),
      description: $checkedConvert(json, 'description', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'companyName': 'company_name',
    'eventName': 'event_name'
  });
}

Map<String, dynamic> _$_$_LanguageHintsToJson(_$_LanguageHints instance) =>
    <String, dynamic>{
      'role': instance.role,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'password': instance.password,
      'company_name': instance.companyName,
      'location': instance.location,
      'phone': instance.phone,
      'whatsapp': instance.whatsapp,
      'instagram': instance.instagram,
      'website': instance.website,
      'event_name': instance.eventName,
      'description': instance.description,
    };
