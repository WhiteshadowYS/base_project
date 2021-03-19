// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasePresponse _$_$_BasePresponseFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_BasePresponse', json, () {
    final val = _$_BasePresponse(
      count: $checkedConvert(json, 'count', (v) => v as num?),
      next: $checkedConvert(json, 'next', (v) => v as String?),
      previus: $checkedConvert(json, 'previus', (v) => v as String?),
      results: $checkedConvert(json, 'results', (v) => v as List<dynamic>?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_BasePresponseToJson(_$_BasePresponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previus': instance.previus,
      'results': instance.results,
    };
