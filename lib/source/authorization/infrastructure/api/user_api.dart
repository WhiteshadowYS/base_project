import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/utils/base_elements/base_api.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';

part 'user_api.g.dart';

@lazySingleton
@RestApi()
abstract class UserApi extends BaseApi {
  @factoryMethod
  factory UserApi(
    @Named('authorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _UserApi;

  @GET('/user')
  Future<User> load();

  @POST('/user')
  Future<User> upload(@Body() User user);
}
