import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:base_project/common/logic/storage/i_storage.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';

@lazySingleton
class LanguageStorage {
  final IStorage _storage;

  const LanguageStorage(this._storage);

  String get selectedLanguage => '/selected_language';
  String get languagesList => '/languages_list';

  Future<void> saveSelectedLanguage(Language language) async {
    await _storage.save<String>(
      selectedLanguage,
      jsonEncode(language.toJson()),
    );
  }

  Future<void> saveLanguagesList(List<Language> languages) async {
    await _storage.save<String>(
      languagesList,
      jsonEncode(languages.map((e) => e.toJson()).toList()),
    );
  }

  Future<Language?> takeSelectedLanguage() async {
    try {
      final String? data = await _storage.take<String>(selectedLanguage);

      return Language.fromJson(jsonDecode(data ?? ''));
    } catch (e) {
      print('LanguageStorage => <takeSelectedLanguage> => error: $e');
      return null;
    }
  }

  Future<List<Language>> takeLanguagesList() async {
    try {
      final String? data = await _storage.take<String>(languagesList);

      if (data == null) {
        return [];
      }

      return jsonDecode(data).map((e) => Language.fromJson(e)).toList();
    } catch (e) {
      print('LanguageStorage => <takeLanguagesList> => error: $e');
      return [];
    }
  }
}
