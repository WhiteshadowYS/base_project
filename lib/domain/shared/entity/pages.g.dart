// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pages _$_$_PagesFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Pages', json, () {
    final val = _$_Pages(
      next: $checkedConvert(json, 'next', (v) => v as int?),
      current: $checkedConvert(json, 'current', (v) => v as int?),
      previous: $checkedConvert(json, 'previous', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_PagesToJson(_$_Pages instance) => <String, dynamic>{
      'next': instance.next,
      'current': instance.current,
      'previous': instance.previous,
    };
