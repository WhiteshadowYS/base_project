// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Token _$_$_TokenFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Token', json, () {
    final val = _$_Token(
      token: $checkedConvert(json, 'token', (v) => v as String?),
      expiry: $checkedConvert(json, 'expiry',
          (v) => v == null ? null : DateTime.parse(v as String)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_TokenToJson(_$_Token instance) => <String, dynamic>{
      'token': instance.token,
      'expiry': instance.expiry?.toIso8601String(),
    };
