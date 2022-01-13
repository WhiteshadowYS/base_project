// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailSignInDto _$$_EmailSignInDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_EmailSignInDto',
      json,
      ($checkedConvert) {
        final val = _$_EmailSignInDto(
          email: $checkedConvert('email', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_EmailSignInDtoToJson(_$_EmailSignInDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}
