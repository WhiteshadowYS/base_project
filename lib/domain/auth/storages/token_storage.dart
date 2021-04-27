import 'package:base_project/domain/auth/entity/token/token.dart';

abstract class TokenStorage {
  Future<void> delete();
  Future<void> save(Token token);
  Future<Token?> take();
}
