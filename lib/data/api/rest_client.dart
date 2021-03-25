import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:base_project/data/responses/base_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/pokemon')
  Future<BasePresponse> getPokemons();
}
