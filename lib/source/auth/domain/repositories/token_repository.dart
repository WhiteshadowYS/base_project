import 'package:base_project/source/auth/domain/entity/token.dart';

abstract class TokenRepository {
  Token get token;
  TokenRepository update(Token token);
}
