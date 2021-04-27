// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationRequestBody _$_$_RegistrationRequestBodyFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_RegistrationRequestBody', json, () {
    final val = _$_RegistrationRequestBody(
      firstName: $checkedConvert(json, 'first_name', (v) => v as String?),
      lastName: $checkedConvert(json, 'last_name', (v) => v as String?),
      email: $checkedConvert(json, 'email', (v) => v as String?),
      phone: $checkedConvert(json, 'phone_number', (v) => v as String?),
      password: $checkedConvert(json, 'password', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'phone': 'phone_number'
  });
}

Map<String, dynamic> _$_$_RegistrationRequestBodyToJson(
        _$_RegistrationRequestBody instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone_number': instance.phone,
      'password': instance.password,
    };
