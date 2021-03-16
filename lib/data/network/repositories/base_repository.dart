import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:base_project_template/data/network/api/rest_client.dart';

abstract class BaseRepository {
  BaseRepository(this.dio) : api = RestClient(dio);

  final Dio dio;

  Logger get logger => Logger('$runtimeType #${identityHashCode(this)} ');

  RestClient api;
}
