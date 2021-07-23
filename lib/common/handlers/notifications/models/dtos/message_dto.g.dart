// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$_$_MessageDtoFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_MessageDto', json, () {
    final val = _$_MessageDto(
      $checkedConvert(json, 'id', (v) => v as String?),
      $checkedConvert(json, 'title', (v) => v as String?),
      $checkedConvert(json, 'body', (v) => v as String?),
      $checkedConvert(json, 'image', (v) => v as String?),
      $checkedConvert(json, 'type', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
      'type': instance.type,
    };
