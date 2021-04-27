import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_register.freezed.dart';
part 'language_register.g.dart';

@freezed
class LanguageRegister with _$LanguageRegister {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageRegister({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'footnote_button') String? footnoteButton,
  }) = _LanguageRegister;

  factory LanguageRegister.fromJson(Map<String, dynamic> json) => _$LanguageRegisterFromJson(json);
}
