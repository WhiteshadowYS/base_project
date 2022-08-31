import 'package:base_project/source/auth/entity/token.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalTokenDataSource {
  Future<Token> get() async {
    /// Get token from Storage
    return Token('token');
  }

  Future<void> save(Token token) async {
    /// Save Token to Storage
  }

  Future<void> delete() async {
    /// Delete token from Storage
  }
}
