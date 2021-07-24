import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/utils/base_elements/base_api.dart';
import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';

part 'sign_up_api.g.dart';

@lazySingleton
@RestApi()
abstract class SignUpApi extends BaseApi {
  @factoryMethod
  factory SignUpApi(
    @Named('unauthorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _SignUpApi;

  @POST('/auth/sign-up/email')
  Future<void> emailSignUp(@Body() EmailSignInDto body);

  @POST('/auth/sign-up/google')
  Future<void> googleSignUp();
}
