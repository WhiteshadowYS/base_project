import 'package:flutter/material.dart';
import 'package:base_project_template/dictionary/models/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supported_language.g.dart';

@JsonSerializable()
class SupportedLanguage {
  final String? languageCode;
  final Language? language;
  bool? _isSelected;

  SupportedLanguage({
    required this.languageCode,
    required this.language,
  }) {
    _isSelected = false;
  }

  bool get isSelected => _isSelected ?? false;

  void choose() => _isSelected = true;

  void discard() => _isSelected = false;

  Locale get getLocale => Locale(languageCode ?? '');

  factory SupportedLanguage.fromJson(Map<String, dynamic> json) => _$SupportedLanguageFromJson(json);
  Map toJson() => _$SupportedLanguageToJson(this);
}
