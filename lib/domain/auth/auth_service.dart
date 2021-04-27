import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';
import 'package:base_project/domain/auth/responses/registration_response.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';

abstract class AuthService {
  Future<RegistrationResponse?> register(RegistrationRequestBody body);
  Future<Token?> login(LoginRequestBody body);
  Future<bool> logout();

  Future<bool> forgotPassword(ForgotPasswordBody body);
  Future<bool> passwordRecovery();
}
