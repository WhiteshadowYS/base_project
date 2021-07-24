import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/utils/base_elements/base_api.dart';

part 'sign_out_api.g.dart';

@lazySingleton
@RestApi()
abstract class SignOutApi extends BaseApi {
  @factoryMethod
  factory SignOutApi(
    @Named('authorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _SignOutApi;

  @POST('/auth/sign-out')
  Future<void> signOut();
}
