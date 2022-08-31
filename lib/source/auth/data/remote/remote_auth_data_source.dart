import 'package:base_project/source/auth/data/requests/login_request.dart';
import 'package:base_project/source/auth/data/responses/login_response.dart';
import 'package:base_project/utils/base_elements/base_api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_auth_data_source.g.dart';

@lazySingleton
@RestApi()
abstract class RemoteAuthDataSource extends BaseApi {
  @factoryMethod
  factory RemoteAuthDataSource(
    @Named('authorized') Dio dio, {
    @Named('base_url') String baseUrl,
  }) = _RemoteAuthDataSource;

  @POST('/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest body);
}
