import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_global.freezed.dart';
part 'language_global.g.dart';

@freezed
class LanguageGlobal with _$LanguageGlobal {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageGlobal({
    @JsonKey(name: 'error_title') String? errorTitle,
  }) = _LanguageGlobal;

  factory LanguageGlobal.fromJson(Map<String, dynamic> json) => _$LanguageGlobalFromJson(json);
}
