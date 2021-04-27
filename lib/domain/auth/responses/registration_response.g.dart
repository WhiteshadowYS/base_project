// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationResponse _$_$_RegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_RegistrationResponse', json, () {
    final val = _$_RegistrationResponse(
      status: $checkedConvert(json, 'created', (v) => v as bool?),
    );
    return val;
  }, fieldKeyMap: const {'status': 'created'});
}

Map<String, dynamic> _$_$_RegistrationResponseToJson(
        _$_RegistrationResponse instance) =>
    <String, dynamic>{
      'created': instance.status,
    };
