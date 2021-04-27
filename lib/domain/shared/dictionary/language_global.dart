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
    @JsonKey(name: 'not_verefied_dialog') String? notVerefiedDialog,
    @JsonKey(name: 'notification_title') String? notificationTitle,
    @JsonKey(name: 'yes') String? yes,
    @JsonKey(name: 'no') String? no,
  }) = _LanguageGlobal;

  factory LanguageGlobal.fromJson(Map<String, dynamic> json) => _$LanguageGlobalFromJson(json);
}
