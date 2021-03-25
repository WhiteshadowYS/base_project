import 'package:base_project/domain/dictionary/language_global.dart';
import 'package:base_project/domain/dictionary/language_login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class Language with _$Language {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Language({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'login') required LanguageLogin login,
    @JsonKey(name: 'global') required LanguageGlobal global,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}
