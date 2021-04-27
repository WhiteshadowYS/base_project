// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordBody _$_$_ForgotPasswordBodyFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_ForgotPasswordBody', json, () {
    final val = _$_ForgotPasswordBody(
      email: $checkedConvert(json, 'email', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_ForgotPasswordBodyToJson(
        _$_ForgotPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
