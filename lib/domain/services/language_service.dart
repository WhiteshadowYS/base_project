import 'package:base_project_template/data/dictionary/models/supported_language.dart';

abstract class LanguageService {
  Future<SupportedLanguage> getLanguage();

  Future<void> saveLanguage(SupportedLanguage language);
}
