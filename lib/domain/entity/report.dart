import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Report({
    @JsonKey(name: 'created_at') DateTime? creationDate,
    @JsonKey(name: 'report_type') ReportType? reportType,
    @JsonKey(name: 'file_path') String? filePath,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

enum ReportType {
  @JsonValue('default')
  Default
}
