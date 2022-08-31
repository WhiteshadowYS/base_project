// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$$_TokenFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Token',
      json,
      ($checkedConvert) {
        final val = _$_Token(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'token': instance.token,
    };
