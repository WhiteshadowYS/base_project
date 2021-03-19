import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:base_project_template/config/app_config.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:base_project_template/data/local_storage/token_storage.dart';
import 'package:base_project_template/data/interceptors/error_intercepter.dart';
import 'package:base_project_template/data/interceptors/connection_intercepter.dart';

const _timeout = 10000;

@module
abstract class ThirdPartyModule {
  @Named('authorized')
  @lazySingleton
  Dio provideAuthorizedDio(AppConfig config, TokenStorage tokenStorage) => _getDio(config, tokenStorage, true);

  @Named('unauthorized')
  @lazySingleton
  Dio provideUnAuthorizedDio(AppConfig config, TokenStorage tokenStorage) => _getDio(config, tokenStorage, false);

  Dio _getDio(
    AppConfig config,
    TokenStorage tokenStorage,
    bool isAuthorized,
  ) {
    final dio = Dio(_dioOptions);

    dio.options.baseUrl = config.baseUrl;

    final interceptors = [
      ErrorInterceptor.instance,
      ConnectionIntercepter.instance,
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
      ),
    ];

    return dio
      ..interceptors.addAll([
        if (config.enableLogs) ...interceptors,
      ]);
  }

  @lazySingleton
  @factoryMethod
  FlutterSecureStorage get flutterSecureStorage => FlutterSecureStorage();

  // @lazySingleton
  // @factoryMethod
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging();
}

BaseOptions get _dioOptions {
  return BaseOptions(
    connectTimeout: _timeout,
    receiveTimeout: _timeout,
    sendTimeout: _timeout,
  );
}
