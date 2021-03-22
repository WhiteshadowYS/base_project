import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

enum TokenType { Firebase, JWT, Bearer, Custom }

class HeaderInterceptor extends Interceptor {
  HeaderInterceptor._privateConstructor();

  static final HeaderInterceptor _instance = HeaderInterceptor._privateConstructor();

  static HeaderInterceptor get instance => _instance;

  Logger get _logger => Logger('[$runtimeType]');

  Future Function(RequestOptions)? onRequestFunction;
  Future Function(Response)? onResponseFunction;
  Future Function(DioError)? onErrorFunction;

  void init({
    TokenType tokenType = TokenType.Custom,
    Future Function(RequestOptions options)? onRequest,
    Future Function(Response response)? onResponse,
    Future Function(DioError error)? onError,
  }) {
    if (tokenType == TokenType.Custom) {
      onRequestFunction = onRequest;
      onResponseFunction = onResponse;
      onErrorFunction = onError;
      return;
    }

    if (tokenType == TokenType.Bearer) {
      _setBearerTokenType();
      return;
    }

    if (tokenType == TokenType.JWT) {
      _setJWTTokenType();
      return;
    }

    if (tokenType == TokenType.Firebase) {
      _setFirebaseTokenType();
      return;
    }
  }

  void _setJWTTokenType() {}

  void _setBearerTokenType() {}

  void _setFirebaseTokenType() {}

  @override
  Future onRequest(RequestOptions options) async {
    _logger.info('onRequest options: $options');

    return onRequestFunction!(options);
  }

  @override
  Future onError(DioError error) async {
    _logger.info('onError error: $error');

    return onErrorFunction!(error);
  }

  @override
  Future onResponse(Response response) async {
    _logger.info('onResponse response: $response');

    return onResponseFunction!(response);
  }
}
