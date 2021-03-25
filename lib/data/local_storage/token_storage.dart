import 'package:base_project/data/local_storage/base_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@named
@LazySingleton(as: BaseStorage)
class TokenStorage implements BaseStorage<String> {
  final FlutterSecureStorage _storage;

  const TokenStorage(this._storage);

  static const String _tokenKey = '/token';

  Logger get logger => Logger('[$runtimeType]');

  @override
  String get key => '/token';

  @override
  Future<void> save(token) async => await _storage.write(key: _tokenKey, value: token);

  @override
  Future<String?> take() async {
    try {
      return await _storage.read(key: _tokenKey) ?? '';
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return null;
    }
  }
}
