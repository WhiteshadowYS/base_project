import 'package:flutter/material.dart';
import 'package:base_project_template/data/dictionary/models/language.dart';
import 'package:base_project_template/data/dictionary/flutter_delegate.dart';

class FlutterDictionary {
  static const String tag = '[FlutterDictionary]';

  FlutterDictionary._privateConstructor({this.locale});

  FlutterDictionary({this.locale});

  static final FlutterDictionary _instance = FlutterDictionary._privateConstructor();

  static FlutterDictionary get instance => _instance;

  Locale? locale;
  Language? language;

  void setNewLanguage(String languageCode) {
    print('$tag => setNewLanguage() => locale => $languageCode');
    locale = Locale(languageCode);
    FlutterDictionaryDelegate.changeLocaleWithLanguageCode(languageCode);
    language = FlutterDictionaryDelegate.getLanguageByLanguageCode(languageCode);
  }

  void setNewLanguageAndSave(String languageCode) {
    print('$tag => setNewLanguageAndSave() => locale => $languageCode');
    language = FlutterDictionaryDelegate.getLanguageByLanguageCode(languageCode);
  }

  static const List<String> _rtlLanguages = <String>[
    'he',
    'ab',
  ];

  bool isLocaleRTL(String locale) {
    return _rtlLanguages.contains(locale);
  }

  bool get isRTL {
    return _rtlLanguages.contains(FlutterDictionaryDelegate.getCurrentLocale);
  }
}
