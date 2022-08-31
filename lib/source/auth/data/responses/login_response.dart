import 'package:base_project/source/auth/entity/token.dart';
import 'package:base_project/source/auth/entity/user.dart';

/// Should be with Freezed & JsonSur
class LoginResponse {
  final Token token;
  final User user;

  const LoginResponse(
    this.token,
    this.user,
  );
}
