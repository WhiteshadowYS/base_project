import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lalee_mobile/data/local_storage/base_storage.dart';

// @named
// @LazySingleton(as: BaseStorage)
// class LanguageStorage implements BaseStorage<> {
//   final FlutterSecureStorage _storage;

//   const LanguageStorage(this._storage);

//   @override
//   String get key => '/selected_language';

//   @override
//   Future<void> save(SupportedLanguage language) async {
//     await _storage.write(
//       key: key,
//       value: jsonEncode(language.toJson()),
//     );
//   }

//   @override
//   Future<SupportedLanguage?> take() async {
//     try {
//       final String? data = await _storage.read(key: key);

//       return SupportedLanguage.fromJson(jsonDecode(data ?? ''));
//     } catch (e) {
//       print('LanguageStorage => <getSupportedLanguage> => error: $e');
//       return null;
//     }
//   }
// }
