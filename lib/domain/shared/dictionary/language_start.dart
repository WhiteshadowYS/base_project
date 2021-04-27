import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_start.freezed.dart';
part 'language_start.g.dart';

@freezed
class LanguageStart with _$LanguageStart {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageStart({
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'footnote_text') String? footnoteText,
  }) = _LanguageStart;

  factory LanguageStart.fromJson(Map<String, dynamic> json) => _$LanguageStartFromJson(json);
}
