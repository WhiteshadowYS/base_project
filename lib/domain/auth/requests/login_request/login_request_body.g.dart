// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequestBody _$_$_LoginRequestBodyFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_LoginRequestBody', json, () {
    final val = _$_LoginRequestBody(
      email: $checkedConvert(json, 'email', (v) => v as String?),
      password: $checkedConvert(json, 'password', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LoginRequestBodyToJson(
        _$_LoginRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
