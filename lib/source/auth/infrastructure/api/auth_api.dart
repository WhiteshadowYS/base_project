import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/utils/base_elements/base_api.dart';

part 'auth_api.g.dart';

@lazySingleton
@RestApi()
abstract class AuthApi extends BaseApi {
  @factoryMethod
  factory AuthApi(
    @Named('unauthorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _AuthApi;

  @POST('/v1/login')
  Future<void> login();
}
