// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenData _$_$_TokenDataFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_TokenData', json, () {
    final val = _$_TokenData(
      name: $checkedConvert(json, 'name', (v) => v as String?),
      url: $checkedConvert(json, 'url', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_TokenDataToJson(_$_TokenData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
