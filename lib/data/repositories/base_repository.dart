import 'package:lalee_mobile/config/app_config.dart';
import 'package:lalee_mobile/data/api/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

abstract class BaseRepository {
  BaseRepository(this.dio, AppConfig config) : api = RestClient(dio, baseUrl: config.baseUrl);

  final Dio dio;

  Logger get logger => Logger('$runtimeType #${identityHashCode(this)} ');

  RestClient api;
}
