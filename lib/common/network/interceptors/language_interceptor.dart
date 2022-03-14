import 'package:base_project/common/network/interceptors/resources/const.dart';
import 'package:base_project/config/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class LanguageInterceptor extends Interceptor {
  static LanguageInterceptor get instance => getIt<LanguageInterceptor>();

  LanguageGetter? languageGetter;
  LanguageBuilder? languageBuilder;

  void init({
    LanguageGetter? languageGetter,
    LanguageBuilder? languageBuilder,
  }) {
    this.languageGetter = languageGetter;
    this.languageBuilder ??= languageBuilder ?? LanguageBuilders.defaultLanguageBuilder;
  }

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    handler,
  ) async {
    final Locale? locale = await languageGetter?.call();

    if (locale == null) {
      return super.onRequest(options, handler);
    }

    final Map<String, String> headers = languageBuilder!(locale);

    options.headers.addAll(headers);

    return super.onRequest(options, handler);
  }
}
