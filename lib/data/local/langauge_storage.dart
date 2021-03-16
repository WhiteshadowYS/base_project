import 'dart:convert';
import 'package:base_project_template/dictionary/models/supported_language.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@lazySingleton
class LanguageStorage {
  final FlutterSecureStorage _storage;

  const LanguageStorage(this._storage);

  static const String _supportedLanguageKey = '/supportedLanguage';

  void postSupportedLanguage(SupportedLanguage language) {
    _storage.write(key: _supportedLanguageKey, value: jsonEncode(language.toJson()));
  }

  Future<SupportedLanguage?> getSupportedLanguage() async {
    try {
      final String? data = await _storage.read(key: _supportedLanguageKey);

      return SupportedLanguage.fromJson(jsonDecode(data ?? ''));
    } catch (e) {
      print('LanguageStorage => <getSupportedLanguage> => error: $e');
      return null;
    }
  }
}
