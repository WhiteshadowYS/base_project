import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project_template/data/dictionary/models/language.dart';

part 'supported_language.freezed.dart';
part 'supported_language.g.dart';

@freezed
class SupportedLanguage with _$SupportedLanguage {
  const SupportedLanguage._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory SupportedLanguage({
    String? languageCode,
    Language? language,
    @Default(false) bool isSelected,
  }) = _SupportedLanguage;

  Locale get getLocale => Locale(languageCode ?? '');

  factory SupportedLanguage.fromJson(Map<String, dynamic> json) => _$SupportedLanguageFromJson(json);
}
