import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:base_project_template/dictionary/models/language.dart';
import 'package:base_project_template/dictionary/flutter_dictionary.dart';
import 'package:base_project_template/dictionary/models/supported_locales.dart';

class FlutterDictionaryDelegate extends LocalizationsDelegate<FlutterDictionary> {
  static List<LocalizationsDelegate<dynamic>> get getLocalizationDelegates {
    return <LocalizationsDelegate<dynamic>>[
      FlutterDictionaryDelegate(),
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  static String get getCurrentLocale => SupportedLocales.instance.getCurrentLocale;

  static List<Locale> get getSupportedLocales => SupportedLocales.instance.getSupportedLocales;

  static void changeLocaleWithLanguageCode(String languageCode) => SupportedLocales.instance.changeLocale(languageCode);

  static Language? getLanguageByLocale(Locale locale) => SupportedLocales.instance.getSupportedLanguage(locale)?.language;

  static Language? getLanguageByLanguageCode(String locale) => SupportedLocales.instance.getSupportedLanguage(Locale(locale))?.language;

  ///locales added here are supported by the dictionary, but not yet by the app
  @override
  bool isSupported(Locale locale) => SupportedLocales.instance.getSupportedLanguage(locale) != null;

  @override
  Future<FlutterDictionary> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<FlutterDictionary>(FlutterDictionary());
  }

  @override
  bool shouldReload(LocalizationsDelegate<FlutterDictionary> old) => false;
}
