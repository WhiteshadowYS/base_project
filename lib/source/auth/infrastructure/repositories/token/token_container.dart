import 'package:base_project/source/auth/domain/entity/token.dart';
import 'package:base_project/source/auth/domain/repositories/token_repository.dart';

class TokenContainer implements TokenRepository {
  final Token _token;

  TokenContainer(this._token);

  @override
  Token get token => _token;

  @override
  TokenRepository update(Token token) => TokenContainer(token);
}
