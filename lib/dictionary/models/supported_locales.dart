import 'package:base_project_template/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:base_project_template/dictionary/data/ru.dart';
import 'package:base_project_template/dictionary/models/supported_language.dart';

class SupportedLocales {
  List<SupportedLanguage>? _supportedLocales;

  SupportedLocales._() {
    _supportedLocales = <SupportedLanguage>[
      SupportedLanguage(
        languageCode: AppData.locales.ru,
        language: ru,
      )..copyWith(isSelected: true),
    ];
  }

  static SupportedLocales instance = SupportedLocales._();

  void changeLocale(String languageCode) {
    _supportedLocales?.firstWhere((SupportedLanguage supLang) => supLang.isSelected).copyWith(isSelected: false);
    _supportedLocales?.firstWhere((SupportedLanguage supLang) => supLang.languageCode == languageCode).copyWith(isSelected: true);
  }

  List<Locale> get getSupportedLocales {
    return _supportedLocales?.map((SupportedLanguage supLang) => supLang.getLocale).toList() ?? <Locale>[];
  }

  List<SupportedLanguage> get getSupportedLanguages {
    return _supportedLocales ?? <SupportedLanguage>[];
  }

  String get getCurrentLocale {
    return _supportedLocales?.firstWhere((SupportedLanguage supLang) => supLang.isSelected).languageCode ?? AppData.locales.base;
  }

  SupportedLanguage? getSupportedLanguage(Locale locale) {
    return _supportedLocales?.firstWhere((SupportedLanguage supLang) => supLang.languageCode == locale.languageCode);
  }
}
