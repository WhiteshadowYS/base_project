import 'package:base_project_template/common/dictionary/base_dictionary.dart';
import 'package:base_project_template/common/dictionary/i_dictionary.dart';
import 'package:base_project_template/common/screen/i_screen_manager.dart';
import 'package:base_project_template/common/screen/screen_manager.dart';
import 'package:base_project_template/domain/dictionary/language.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:base_project_template/config/app_config.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:base_project_template/data/local_storage/token_storage.dart';
import 'package:base_project_template/common/connection/connection_checker.dart';
import 'package:base_project_template/common/connection/i_connection_checker.dart';
import 'package:base_project_template/common/device_info/base_device_info_loader.dart';
import 'package:base_project_template/common/device_info/i_device_info_loader.dart';
import 'package:base_project_template/common/dialog/dialog_presenter.dart';
import 'package:base_project_template/common/dialog/i_dialog_presenter.dart';
import 'package:base_project_template/common/interceptors/connection_intercepter.dart';
import 'package:base_project_template/common/interceptors/error_intercepter.dart';
import 'package:base_project_template/common/project_info/base_project_info_loader.dart';
import 'package:base_project_template/common/project_info/i_project_info_loader.dart';

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
      errorInterceptor,
      connectionInterceptor,
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
  ErrorInterceptor get errorInterceptor => ErrorInterceptor()..init(errorOutput: (String error) => print('Error Interceptor error: $error'));

  @lazySingleton
  @factoryMethod
  ConnectionIntercepter get connectionInterceptor =>
      ConnectionIntercepter(connectionChecker)..init(showConnectionError: () => print('No Connection Error'));

  @lazySingleton
  @factoryMethod
  IConnectionChecker get connectionChecker => ConnectionChecker();

  @lazySingleton
  @factoryMethod
  IDeviceInfoLoader get deviceInfo => BaseDeviceinfoLoader();

  @lazySingleton
  @factoryMethod
  IProjectInfoLoader get projectInfo => BaseProjectinfoLoader();

  @lazySingleton
  @factoryMethod
  IDialogPresenter get dialogPresenter => DialogPresenter();

  @lazySingleton
  @factoryMethod
  IScreenManager get screenManager => ScreenManager(deviceInfo);

  @lazySingleton
  @factoryMethod
  IDictionary<Language> get dictionary => BaseDictionary<Language>(
        initialLanguageCode: 'en',
        languages: [],
        languageBuilder: (Map<String, dynamic> json) => Language.fromJson(json),
      );

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
