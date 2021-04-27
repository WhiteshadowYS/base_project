import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/data/shared/adapters/error_adapter.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/shared/dialogs/error_dialog.dart';
import 'package:base_project/domain/auth/storages/token_storage.dart';
import 'package:base_project/common/logic/connection/connection_checker.dart';
import 'package:base_project/common/presentors/dialog/i_dialog_presenter.dart';
import 'package:base_project/common/logic/connection/i_connection_checker.dart';
import 'package:base_project/common/handlers/interceptors/error_intercepter.dart';
import 'package:base_project/common/handlers/interceptors/header_interceptor.dart';
import 'package:base_project/common/handlers/interceptors/connection_intercepter.dart';

const String authorized = 'authorized';
const String unauthorized = 'unauthorized';

@module
abstract class NetworkModuleConfig {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();
  AppConfig get _appConfig => dependencyContainer!.get<AppConfig>();
  TokenStorage get _tokenStorage => dependencyContainer!.get<TokenStorage>();
  IDialogPresenter get _dialogPresenter => dependencyContainer!.get<IDialogPresenter>();
  IConnectionChecker get _connectionChecker => dependencyContainer!.get<IConnectionChecker>();

  HeaderInterceptor get _headerInterceptor => dependencyContainer!.get<HeaderInterceptor>();
  Interceptor get _errorInterceptor => dependencyContainer!.get<ErrorInterceptor>();
  Interceptor get _connectionInterceptor => dependencyContainer!.get<ConnectionIntercepter>();
  IErrorAdapter get _errorAdapter => dependencyContainer!.get<IErrorAdapter>();

  BaseOptions get _dioOptions {
    return BaseOptions(
      connectTimeout: 10000,
      receiveTimeout: 10000,
      sendTimeout: 10000,
    );
  }

  @Named(authorized)
  @injectable
  Dio provideAuthorizedDio(AppConfig config, TokenStorage tokenStorage) => _getDio(config, tokenStorage, true);

  @Named(unauthorized)
  @injectable
  Dio provideUnAuthorizedDio(AppConfig config, TokenStorage tokenStorage) => _getDio(config, tokenStorage, false);

  Dio _getDio(
    AppConfig config,
    TokenStorage tokenStorage,
    bool isAuthorized,
  ) {
    final dio = Dio(_dioOptions);

    dio.options.baseUrl = config.baseUrl;

    final interceptors = [
      HeaderInterceptor(
        router: _router,
        storage: tokenStorage,
        isAuthorized: isAuthorized,
      ),
      _connectionInterceptor,
      _errorInterceptor,
    ];

    return dio
      ..interceptors.addAll([
        ...interceptors,
        if (config.enableLogs)
          PrettyDioLogger(
            requestBody: true,
            requestHeader: true,
          ),
      ]);
  }

  @lazySingleton
  @factoryMethod
  IConnectionChecker get connectionChecker => ConnectionChecker();

  @lazySingleton
  @factoryMethod
  IErrorAdapter get errorAdapter => ErrorAdapter(_appConfig, _dialogPresenter);

  @lazySingleton
  @factoryMethod
  ErrorInterceptor get errorInterceptor {
    final ErrorInterceptor _interceptor = ErrorInterceptor(_appConfig);
    _interceptor.init(errorOutput: _errorAdapter);
    return _interceptor;
  }

  @lazySingleton
  @factoryMethod
  ConnectionIntercepter get connectionInterceptor {
    final ConnectionIntercepter _interceptor = ConnectionIntercepter(_connectionChecker);
    _interceptor.init(showConnectionError: () => print('No Connection Error'));
    return _interceptor;
  }
}
