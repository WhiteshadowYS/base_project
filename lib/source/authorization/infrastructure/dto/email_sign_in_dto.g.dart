// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailSignInDto _$_$_EmailSignInDtoFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_EmailSignInDto', json, () {
    final val = _$_EmailSignInDto(
      email: $checkedConvert(json, 'email', (v) => v as String?),
      password: $checkedConvert(json, 'password', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_EmailSignInDtoToJson(_$_EmailSignInDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
