import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/data/auth/auth_api.dart';
import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/data/shared/base_repository.dart';
import 'package:base_project/config/modules/network_module_config.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';
import 'package:base_project/domain/auth/responses/registration_response.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';
import 'package:base_project/utils/object_check.dart';

@lazySingleton
class AuthRepositoryUnauhthorized extends BaseRepository<AuthApi> {
  final AppConfig config;

  AuthRepositoryUnauhthorized(
    @Named(unauthorized) Dio dio,
    this.config,
  ) : super(AuthApi(dio, baseUrl: config.baseUrl));

  Future<RegistrationResponse?> register(RegistrationRequestBody body) async {
    late final RegistrationResponse? response;

    if (!config.useMock) {
      try {
        response = await api.register(
          RegistrationRequestBody.fromJson(objectCheck(body)),
        );
      } catch (e) {
        response = RegistrationResponse(status: false);
      }
    } else {
      response = RegistrationResponse.mock();
    }

    return response;
  }

  Future<Token?> login(LoginRequestBody body) async {
    late final Token? response;

    if (!config.useMock) {
      try {
        response = await api.login(
          LoginRequestBody.fromJson(objectCheck(body)),
        );
      } catch (e) {
        response = null;
      }
    } else {
      response = Token.mock();
    }

    return response;
  }

  Future<bool> forgotPassword(ForgotPasswordBody body) async {
    late final bool? response;

    if (!config.useMock) {
      try {
        await api.forgotPassword(
          ForgotPasswordBody.fromJson(objectCheck(body)),
        );
        response = true;
      } catch (e) {
        response = false;
      }
    } else {
      response = true;
    }

    return response;
  }

  Future<bool> restorePassword() async {
    late final bool? response;

    if (!config.useMock) {
      try {
        await api.restorePassword();
        response = true;
      } catch (e) {
        response = false;
      }
    } else {
      response = true;
    }

    return response;
  }
}
