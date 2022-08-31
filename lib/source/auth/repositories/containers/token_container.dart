import 'package:base_project/source/auth/entity/token.dart';

class TokenContainer {
  final Token? _token;

  const TokenContainer(this._token);

  Token? get token => _token;

  TokenContainer copyWith({Token? token}) {
    return TokenContainer(token ?? _token);
  }
}
