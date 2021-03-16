import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@lazySingleton
class TokenStorage {
  final FlutterSecureStorage _storage;

  const TokenStorage(this._storage);

  static const String _tokenKey = '/token';

  Logger get logger => Logger('[$runtimeType]');

  void saveToken(String token) {
    _storage.write(key: _tokenKey, value: token);
  }

  Future<String> getToken() async {
    try {
      return await _storage.read(key: _tokenKey) ?? '';
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return '';
    }
  }
}
