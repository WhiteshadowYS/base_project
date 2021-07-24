import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/utils/base_elements/base_api.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';

part 'sign_in_api.g.dart';

@lazySingleton
@RestApi()
abstract class SignInApi extends BaseApi {
  @factoryMethod
  factory SignInApi(
    @Named('unauthorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _SignInApi;

  @POST('/auth/sign-in/email')
  Future<void> emailSignIn(@Body() EmailSignInDto body);

  @POST('/auth/sign-in/google')
  Future<void> googleSignIn();
}
