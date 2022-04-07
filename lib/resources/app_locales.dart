import 'package:flutter/material.dart';

class AppLocales {
  static const _en = Locale('en', 'EN');
  static const _de = Locale('de', 'DE');

  static final Map<Locale, String> _localeNames = {
    _en: 'English',
    _de: 'German',
  };

  static final Map<String, String> _languageCodeToTtsCode = {
    'en-EN': 'en-US',
    'de-DE': 'de-DE',
  };

  Locale get initialLocale => _en;

  List<Locale> get supportedLocales => [_en, _de];

  String? getLocaleName(Locale locale) => _localeNames[locale];

  Locale getLocaleByLanguageTag(String languageTag) {
    final index = supportedLocales.indexWhere((locale) => locale.toLanguageTag().replaceAll('_', '-') == languageTag);
    return index != -1 ? supportedLocales[index] : initialLocale;
  }
}
