import 'package:base_project_template/dictionary/flutter_delegate.dart';
import 'package:base_project_template/dictionary/models/language.dart';
import 'package:flutter/material.dart';

class FlutterDictionary {
  static const String tag = '[FlutterDictionary]';

  FlutterDictionary._privateConstructor({this.locale});

  FlutterDictionary({this.locale});

  static final FlutterDictionary _instance = FlutterDictionary._privateConstructor();

  static FlutterDictionary get instance => _instance;

  final Locale? locale;
  Language? language;

  void setNewLanguage(String languageCode) {
    print('$tag => setNewLanguage() => locale => $languageCode');
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
