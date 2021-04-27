import 'package:injectable/injectable.dart';
import 'package:base_project/domain/auth/auth_service.dart';
import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/data/auth/repositories/auth_repository_aurhorized.dart';
import 'package:base_project/data/auth/repositories/auth_repository_unauthorized.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';
import 'package:base_project/domain/auth/responses/registration_response.dart';

@LazySingleton(as: AuthService)
class AuthServiceServiceImpl implements AuthService {
  final AuthRepositoryUnauhthorized _unauthorizedRepository;
  final AuthRepositoryAuthorized _authorizedRepository;

  AuthServiceServiceImpl(this._authorizedRepository, this._unauthorizedRepository);

  @override
  Future<RegistrationResponse?> register(RegistrationRequestBody body) async {
    final response = await _unauthorizedRepository.register(body);

    return response;
  }

  @override
  Future<Token?> login(LoginRequestBody body) async {
    final response = await _unauthorizedRepository.login(body);

    return response;
  }

  @override
  Future<bool> logout() async {
    final response = await _authorizedRepository.logout();

    return response ?? false;
  }

  @override
  Future<bool> forgotPassword(ForgotPasswordBody body) async {
    final response = await _unauthorizedRepository.forgotPassword(body);

    return response;
  }

  @override
  Future<bool> passwordRecovery() async {
    final response = await _unauthorizedRepository.restorePassword();

    return response;
  }
}
