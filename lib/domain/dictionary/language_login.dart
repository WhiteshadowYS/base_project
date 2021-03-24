import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_login.freezed.dart';
part 'language_login.g.dart';

@freezed
class LanguageLogin with _$LanguageLogin {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageLogin({
    @JsonKey(name: 'email_hint') String? emailHint,
    @JsonKey(name: 'password_hint') String? passwordHint,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'button') String? button,
  }) = _LanguageLogin;

  factory LanguageLogin.fromJson(Map<String, dynamic> json) => _$LanguageLoginFromJson(json);
}
