import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_terms.freezed.dart';
part 'language_terms.g.dart';

@freezed
class LanguageTerms with _$LanguageTerms {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory LanguageTerms({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'content') String? content,
  }) = _LanguageTerms;

  factory LanguageTerms.fromJson(Map<String, dynamic> json) => _$LanguageTermsFromJson(json);
}
