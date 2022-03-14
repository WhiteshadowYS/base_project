import 'package:base_project/common/network/interceptors/resources/const.dart';
import 'package:base_project/config/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RequestInterceptor extends Interceptor {
  static RequestInterceptor get instance => getIt<RequestInterceptor>();

  IdempotencyBuilder? idempotencyBuilder;
  UniqueKeyBuilder? uniqueKeyBuilder;

  void init({
    IdempotencyBuilder? idempotencyBuilder,
    UniqueKeyBuilder? uniqueKeyBuilder,
  }) {
    uniqueKeyBuilder ??= uniqueKeyBuilder ?? UniqueKeyBuilders.defaultUniqueKeyBuilder;
    idempotencyBuilder ??= idempotencyBuilder ?? IdempotencyBuilders.defaultIdempotencyBuilder;
  }

  final Map<String, String> _requests = {};

  bool get isEmpty => _requests.isEmpty;
  bool get isNotEmpty => _requests.isNotEmpty;

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    handler,
  ) async {
    final key = options.uri.path;

    late final String? uniqueKey;

    if (_requests.containsKey(key)) {
      uniqueKey = _requests[key];
    } else {
      uniqueKey = await uniqueKeyBuilder!.call();
      _requests.addAll({key: uniqueKey});
      _notifiListeners();
    }

    final headers = idempotencyBuilder!(uniqueKey ?? '');

    options.headers.addAll(headers);

    return super.onRequest(options, handler);
  }

  @override
  Future<dynamic> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final key = response.realUri.path;

    if (_requests.containsKey(key)) {
      _requests.remove(key);
      _notifiListeners();
    }

    return super.onResponse(response, handler);
  }

  @override
  Future<dynamic> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    final key = err.requestOptions.uri.path;

    if (_requests.containsKey(key)) {
      _requests.remove(key);
      _notifiListeners();
    }

    return super.onError(err, handler);
  }

  final List<VoidCallback> _listeners = [];

  void addListener(VoidCallback listener) => _listeners.add(listener);

  void removeListener(VoidCallback listener) => _listeners.remove(listener);

  void _notifiListeners() {
    for (VoidCallback listener in _listeners) {
      listener();
    }
  }
}
