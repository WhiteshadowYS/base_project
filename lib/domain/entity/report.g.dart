// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$_$_ReportFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Report', json, () {
    final val = _$_Report(
      creationDate: $checkedConvert(json, 'created_at',
          (v) => v == null ? null : DateTime.parse(v as String)),
      reportType: $checkedConvert(json, 'report_type',
          (v) => _$enumDecodeNullable(_$ReportTypeEnumMap, v)),
      filePath: $checkedConvert(json, 'file_path', (v) => v as String?),
    );
    return val;
  }, fieldKeyMap: const {
    'creationDate': 'created_at',
    'reportType': 'report_type',
    'filePath': 'file_path'
  });
}

Map<String, dynamic> _$_$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'created_at': instance.creationDate?.toIso8601String(),
      'report_type': _$ReportTypeEnumMap[instance.reportType],
      'file_path': instance.filePath,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ReportTypeEnumMap = {
  ReportType.Default: 'default',
};
