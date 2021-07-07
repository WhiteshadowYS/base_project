// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationData _$_$_RegistrationDataFromJson(Map<String, dynamic> json) {
  return _$_RegistrationData(
    email: json['email'] as String,
    password: json['password'] as String,
    firstName: json['first_name'] as String,
    secondName: json['second_name'] as String,
  );
}

Map<String, dynamic> _$_$_RegistrationDataToJson(
        _$_RegistrationData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'first_name': instance.firstName,
      'second_name': instance.secondName,
    };
