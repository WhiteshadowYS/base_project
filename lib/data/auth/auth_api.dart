import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/data/shared/base_api.dart';
import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';
import 'package:base_project/domain/auth/responses/registration_response.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi extends BaseApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @POST('/auth/register/event-agent')
  Future<RegistrationResponse?> register(@Body() RegistrationRequestBody body);

  @POST('/auth/login')
  Future<Token?> login(@Body() LoginRequestBody body);

  @POST('/auth/logout')
  Future<void> logout();

  @POST('/auth/forgot-password')
  Future<void> forgotPassword(@Body() ForgotPasswordBody body);

  @POST('/auth/tmp')
  Future<void> restorePassword();
}
