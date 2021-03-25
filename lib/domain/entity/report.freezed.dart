// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
class _$ReportTearOff {
  const _$ReportTearOff();

  _Report call(
      {@JsonKey(name: 'created_at') DateTime? creationDate,
      @JsonKey(name: 'report_type') ReportType? reportType,
      @JsonKey(name: 'file_path') String? filePath}) {
    return _Report(
      creationDate: creationDate,
      reportType: reportType,
      filePath: filePath,
    );
  }

  Report fromJson(Map<String, Object> json) {
    return Report.fromJson(json);
  }
}

/// @nodoc
const $Report = _$ReportTearOff();

/// @nodoc
mixin _$Report {
  @JsonKey(name: 'created_at')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'report_type')
  ReportType? get reportType => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String? get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? creationDate,
      @JsonKey(name: 'report_type') ReportType? reportType,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  final Report _value;
  // ignore: unused_field
  final $Res Function(Report) _then;

  @override
  $Res call({
    Object? creationDate = freezed,
    Object? reportType = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportType: reportType == freezed
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) then) =
      __$ReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? creationDate,
      @JsonKey(name: 'report_type') ReportType? reportType,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class __$ReportCopyWithImpl<$Res> extends _$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(_Report _value, $Res Function(_Report) _then)
      : super(_value, (v) => _then(v as _Report));

  @override
  _Report get _value => super._value as _Report;

  @override
  $Res call({
    Object? creationDate = freezed,
    Object? reportType = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_Report(
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reportType: reportType == freezed
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as ReportType?,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)

/// @nodoc
class _$_Report implements _Report {
  const _$_Report(
      {@JsonKey(name: 'created_at') this.creationDate,
      @JsonKey(name: 'report_type') this.reportType,
      @JsonKey(name: 'file_path') this.filePath});

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$_$_ReportFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime? creationDate;
  @override
  @JsonKey(name: 'report_type')
  final ReportType? reportType;
  @override
  @JsonKey(name: 'file_path')
  final String? filePath;

  @override
  String toString() {
    return 'Report(creationDate: $creationDate, reportType: $reportType, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Report &&
            (identical(other.creationDate, creationDate) ||
                const DeepCollectionEquality()
                    .equals(other.creationDate, creationDate)) &&
            (identical(other.reportType, reportType) ||
                const DeepCollectionEquality()
                    .equals(other.reportType, reportType)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(reportType) ^
      const DeepCollectionEquality().hash(filePath);

  @JsonKey(ignore: true)
  @override
  _$ReportCopyWith<_Report> get copyWith =>
      __$ReportCopyWithImpl<_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReportToJson(this);
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {@JsonKey(name: 'created_at') DateTime? creationDate,
      @JsonKey(name: 'report_type') ReportType? reportType,
      @JsonKey(name: 'file_path') String? filePath}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'report_type')
  ReportType? get reportType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_path')
  String? get filePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReportCopyWith<_Report> get copyWith => throw _privateConstructorUsedError;
}
