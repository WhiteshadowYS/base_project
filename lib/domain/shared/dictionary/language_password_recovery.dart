import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_password_recovery.freezed.dart';
part 'language_password_recovery.g.dart';

@freezed
class LanguagePasswordRecovery with _$LanguagePasswordRecovery {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguagePasswordRecovery({
    @JsonKey(name: 'title') String? title,
  }) = _LanguagePasswordRecovery;

  factory LanguagePasswordRecovery.fromJson(Map<String, dynamic> json) => _$LanguagePasswordRecoveryFromJson(json);
}
