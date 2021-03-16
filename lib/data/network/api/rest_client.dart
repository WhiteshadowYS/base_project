import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:base_project_template/res/api.dart';
import 'package:base_project_template/data/network/responses/base_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Api.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/pokemon')
  Future<BasePresponse> getPokemons();
}
