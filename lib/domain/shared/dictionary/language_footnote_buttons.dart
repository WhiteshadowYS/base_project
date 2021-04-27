import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_footnote_buttons.freezed.dart';
part 'language_footnote_buttons.g.dart';

@freezed
class LanguageFootnoteButtons with _$LanguageFootnoteButtons {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageFootnoteButtons({
    @JsonKey(name: 'terms') String? terms,
    @JsonKey(name: 'login') String? login,
    @JsonKey(name: 'remind_me') String? remindMe,
  }) = _LanguageFootnoteButtons;

  factory LanguageFootnoteButtons.fromJson(Map<String, dynamic> json) => _$LanguageFootnoteButtonsFromJson(json);
}
