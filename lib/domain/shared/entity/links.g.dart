// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Links _$_$_LinksFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Links', json, () {
    final val = _$_Links(
      next: $checkedConvert(json, 'next', (v) => v as String?),
      previous: $checkedConvert(json, 'previous', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
    };
