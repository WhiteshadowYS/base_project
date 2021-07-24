import 'package:base_project/config/configs/app_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../config.dart';

@module
abstract class NetworkModules {
  AppConfig get _config => getIt<AppConfig>();

  @Named('base_url')
  String get baseUrl => _config.baseUrl;

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
    );
  }

  @Named('authorized')
  @injectable
  Dio provideAuthorizedDio(AppConfig config) => _getDio(config, true);

  @Named('unauthorized')
  @injectable
  Dio provideUnAuthorizedDio(AppConfig config) => _getDio(config, false);

  Dio _getDio(
    AppConfig config,
    bool isAuthorized,
  ) {
    final dio = Dio(_dioOptions);

    dio.options.baseUrl = config.baseUrl;

    final interceptors = [
      // HeaderInterceptor(
      //   router: _router,
      //   storage: tokenStorage,
      //   isAuthorized: isAuthorized,
      // ),
      // _connectionInterceptor,
      // _errorInterceptor,
    ];

    return dio
      ..interceptors.addAll([
        ...interceptors,
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
        ),
      ]);
  }
}
