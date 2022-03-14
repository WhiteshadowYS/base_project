import 'package:base_project/common/network/interceptors/resources/const.dart';
import 'package:base_project/config/config.dart';
import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  static AuthorizationInterceptor get instance => getIt<AuthorizationInterceptor>();

  TokenGetter? tokenGetter;
  TokenBuilder? tokenBuilder;

  void init({
    TokenGetter? tokenGetter,
    TokenBuilder? tokenBuilder,
  }) {
    this.tokenGetter = tokenGetter;
    this.tokenBuilder ??= tokenBuilder ?? TokenBuilders.defaultTokenBuilder;
  }

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    handler,
  ) async {
    final String? token = await tokenGetter?.call();

    if (token == null) {
      return super.onRequest(options, handler);
    }

    final Map<String, String> headers = tokenBuilder!(token);

    options.headers.addAll(headers);

    return super.onRequest(options, handler);
  }
}
