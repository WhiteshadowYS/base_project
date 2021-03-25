import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:base_project/common/dictionary/i_dictionary.dart';
import 'package:logging/src/logger.dart';

class BaseDictionary<T> implements IDictionary<T> {
  @override
  Logger get logger => Logger('$runtimeType');

  final T Function(Map<String, dynamic>) languageBuilder;

  @override
  late Map<String, dynamic> selectedLanguage;

  @override
  final List<Map<String, dynamic>> languages = [];

  late final String _languageCode;
  late final List<Locale> _supportedLocales = [];

  BaseDictionary({
    required String initialLanguageCode,
    required List<Map<String, dynamic>> languages,
    required this.languageBuilder,
  }) {
    addLanguagesList(languages);
    useLocale(initialLanguageCode);
  }

  @override
  T get data => languageBuilder(selectedLanguage);

  @override
  bool get isRtl => _isLocaleRTL(_languageCode);

  @override
  List<Locale> get supportedLocales {
    if (_supportedLocales.isEmpty) {
      return [Locale('en')];
    }

    return _supportedLocales;
  }

  bool _isLocaleRTL(String locale) => rtlLanguages.contains(locale);

  @override
  List<String> get rtlLanguages => <String>[
        'he',
        'ab',
      ];

  @override
  set languages(List<Map<String, dynamic>> _languages) {}

  @override
  void addLanguagesList(List<Map<String, dynamic>> languages) {
    if (languages.isEmpty) return;

    for (final lng in languages) {
      addNewLanguage(lng);
    }
  }

  @override
  void addNewLanguage(Map<String, dynamic> languageData) {
    try {
      final locale = Locale(languageData['code']);
      _supportedLocales.add(locale);
      languages.add(languageData);
    } catch (e) {
      logger.warning('Language cant be Added!');
    }
  }

  @override
  void useLocale(String languageCode) {
    if (languages.isEmpty) {
      _loadLanguage(languageCode);
      return;
    }

    for (Map<String, dynamic> language in languages) {
      if (language.containsValue(languageCode)) {
        _languageCode = languageCode;
        selectedLanguage = language;
        return;
      }
    }

    if (_languageCode != languageCode) {
      _loadLanguage(languageCode);
      return;
    }
  }

  Future<void> _loadLanguage(String languageCode) async {
    try {
      final String jsonString = await rootBundle.loadString('i18n/${languageCode}_.json');
      final Map<String, dynamic> language = jsonDecode(jsonString);
      selectedLanguage = language;
    } catch (e) {
      logger.warning('<_loadLanguage> => No Loangauge, $e');
    }
  }

  @override
  List<LocalizationsDelegate<dynamic>> get getLocalizationDelegates {
    return <LocalizationsDelegate<dynamic>>[
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
