// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$$_MessageDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MessageDto',
      json,
      ($checkedConvert) {
        final val = _$_MessageDto(
          $checkedConvert('id', (v) => v as String?),
          $checkedConvert('title', (v) => v as String?),
          $checkedConvert('body', (v) => v as String?),
          $checkedConvert('image', (v) => v as String?),
          $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MessageDtoToJson(_$_MessageDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('body', instance.body);
  writeNotNull('image', instance.image);
  writeNotNull('type', instance.type);
  return val;
}
