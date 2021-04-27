import 'dart:convert';

import 'package:base_project/domain/auth/storages/token_storage.dart';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/common/logic/storage/i_storage.dart';

@LazySingleton(as: TokenStorage)
class TokenStorageImpl implements TokenStorage {
  final IStorage _storage;

  const TokenStorageImpl(this._storage);

  Logger get logger => Logger('[$runtimeType]');

  String get key => '/token';

  @override
  Future<void> delete() async => await _storage.delete<String>(key);

  @override
  Future<void> save(Token token) async => await _storage.save<String>(key, jsonEncode(token.toJson()));

  @override
  Future<Token?> take() async {
    try {
      final String? data = await _storage.take<String>(key);

      if (data == null) return null;

      return Token.fromJson(jsonDecode(data));
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return null;
    }
  }
}
