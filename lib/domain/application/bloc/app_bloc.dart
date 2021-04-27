import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/domain/auth/entity/token/token.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';
import 'package:base_project/common/handlers/deep_link/deep_link.dart';
import 'package:base_project/domain/auth/storages/token_storage.dart';
import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AppRouter _router;
  final TokenStorage _tokenStorage;
  final DeepLinkService _deepLinkService;
  final IDictionary<Language> _dictionary;

  AppBloc(
    this._router,
    this._dictionary,
    this._tokenStorage,
    this._deepLinkService,
  ) : super(AppState(Locale(AppData.locales.base)));

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is _Initialize) {
      yield* _initApp(event);
    }

    if (event is _ChangeLocale) {
      yield* _changeAppLocale(event);
    }
  }

  Stream<AppState> _initApp(_Initialize event) async* {
    _dictionary.useLocale(AppData.locales.base);

    await Future.delayed(Duration(seconds: 2));

    final Token? token = await _tokenStorage.take();

    if (token == null) {
      await _router.replace(StartScreenRoute());
    } else {}

    await _deepLinkService.init();
  }

  Stream<AppState> _changeAppLocale(_ChangeLocale event) async* {
    yield state.copyWith(
      locale: event.locale,
    );
    _dictionary.useLocale(event.locale.languageCode);
  }
}
