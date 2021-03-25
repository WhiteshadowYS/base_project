import 'package:base_project/data/local_storage/base_storage.dart';
import 'package:base_project/domain/services/language_service.dart';
import 'package:injectable/injectable.dart';

// @LazySingleton(as: LanguageService)
// class LanguageServiceImpl implements LanguageService {
//   final BaseStorage _storage;

//   LanguageServiceImpl(@Named('language') this._storage);

//   @override
//   Future<SupportedLanguage> getLanguage() async => await _storage.take();

//   @override
//   Future<void> saveLanguage(SupportedLanguage language) async => _storage.save(language);
// }
