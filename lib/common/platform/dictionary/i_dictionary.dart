import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

abstract class IDictionary<T> {
  Logger get logger => Logger('$runtimeType');

  late final Map<String, dynamic> selectedLanguage;
  late final List<Map<String, dynamic>> languages;

  void useLocale(String languageCode);
  void addNewLanguage(Map<String, dynamic> languageData);
  void addLanguagesList(List<Map<String, dynamic>> languages);
  void addListener(VoidCallback listener);
  void removeListener(VoidCallback listener);

  T get data;
  List<LocalizationsDelegate<dynamic>> get getLocalizationDelegates;

  bool get isRtl;
  List<String> get rtlLanguages;
  List<Locale> get supportedLocales;
}
