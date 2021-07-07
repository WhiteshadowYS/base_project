import 'package:flutter/material.dart';
import 'package:logging/src/logger.dart';
import 'package:base_project/utils/res/i18n/en.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'i_dictionary.dart';

class BaseDictionary<T> implements IDictionary<T> {
  @override
  Logger get logger => Logger('$runtimeType');

  final T Function(Map<String, dynamic>) languageBuilder;

  @override
  late Map<String, dynamic> selectedLanguage;

  @override
  final List<Map<String, dynamic>> languages = [];

  late String _languageCode;
  late final List<Locale> _supportedLocales = [];

  BaseDictionary({
    required String initialLanguageCode,
    required List<Map<String, dynamic>> languages,
    required this.languageBuilder,
  }) {
    addLanguagesList(languages);
    useLocale(initialLanguageCode);
  }

  final List<VoidCallback> _listeners = [];

  @override
  T get data => languageBuilder(selectedLanguage);

  @override
  bool get isRtl => _isLocaleRTL(_languageCode);

  @override
  void addListener(VoidCallback listener) => _listeners.add(listener);

  @override
  void removeListener(VoidCallback listener) => _listeners.remove(listener);

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
        'ar',
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
        _notifiListeners();
        return;
      }
    }

    if (_languageCode != languageCode) {
      _loadLanguage(languageCode);
      return;
    }
  }

  void _notifiListeners() {
    if (_listeners.isEmpty) return;

    for (VoidCallback listener in _listeners) {
      listener();
    }
  }

  Future<void> _loadLanguage(String languageCode) async {
    try {
      selectedLanguage = en;
      _notifiListeners();
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
