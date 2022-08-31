import 'package:base_project/common/network/error/api_error.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

typedef TokenGetter = Future<String> Function();
typedef IsTokenError = Future<bool> Function(DioError);
typedef OnTokenError = Future<void> Function();
typedef TokenBuilder = Map<String, String> Function(String);

typedef LanguageGetter = Future<Locale> Function();
typedef LanguageBuilder = Map<String, String> Function(Locale);

typedef IdempotencyBuilder = Map<String, String> Function(String);
typedef UniqueKeyBuilder = Future<String> Function();

typedef OnApiError = Future<void> Function(ApiError);

abstract class DioTypes {
  static const String authorized = 'authorized';
  static const String unauthorized = 'unauthorized';
}

abstract class HeaderConsts {
  static const String defaultAuthKey = 'Authorization';
  static const String defaultAuthPrefix = 'Token ';
  static const String acceptLanguageKey = 'Accept-Language';
  static const String idempotencyKey = 'Idempotency-Key';
}

abstract class UniqueKeyBuilders {
  static UniqueKeyBuilder get defaultUniqueKeyBuilder {
    return () async {
      // final Uuid _uuid = Uuid();
      // return _uuid.v4();
      return '';
    };
  }
}

abstract class IdempotencyBuilders {
  static IdempotencyBuilder get defaultIdempotencyBuilder {
    return (String uuid) {
      return {HeaderConsts.idempotencyKey: uuid};
    };
  }
}

abstract class TokenBuilders {
  static TokenBuilder get defaultTokenBuilder {
    return (String token) {
      return {HeaderConsts.defaultAuthKey: '${HeaderConsts.defaultAuthPrefix} $token'};
    };
  }
}

abstract class LanguageBuilders {
  static LanguageBuilder get defaultLanguageBuilder {
    return (Locale locale) {
      return {HeaderConsts.acceptLanguageKey: locale.toLanguageTag().replaceAll('_', '-')};
    };
  }
}
