import 'dart:async';

import 'package:base_project/common/dictionary/i_dictionary.dart';
import 'package:base_project/domain/dictionary/language.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/domain/blocs/application/app_router.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  IDictionary<Language> _dictionary;
  AppBloc(
    this._dictionary,
  ) : super(_Initial());

  static void changeLocale(BuildContext context, Locale locale) {
    BlocProvider.of<AppBloc>(context).add(AppEvent.changeLocale(locale));
  }

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

    if (event is _ChangeAppBarState) {
      yield* _changeAppBarState(event);
    }

    if (event is _ChangeBottomBarState) {
      yield* _changeBottomBarState(event);
    }
  }

  Stream<AppState> _initApp(_Initialize event) async* {
    _dictionary.useLocale(AppData.locales.base);
    yield AppState.initialized(locale: Locale(AppData.locales.base));

    await Future.delayed(Duration(seconds: 3));
    await router.push(LoginPageRoute());
  }

  Stream<AppState> _changeAppBarState(_ChangeAppBarState event) async* {
    yield state.maybeMap(
      initialized: (state) => state.copyWith(
        appBarState: event.state,
      ),
      orElse: () => state,
    );
  }

  Stream<AppState> _changeBottomBarState(_ChangeBottomBarState event) async* {
    yield state.maybeMap(
      initialized: (state) => state.copyWith(
        bottomBarState: event.state,
      ),
      orElse: () => state,
    );
  }

  Stream<AppState> _changeAppLocale(_ChangeLocale event) async* {
    yield state.maybeMap(
      initialized: (_Initialized state) => state.copyWith(
        locale: event.locale,
      ),
      orElse: () => state,
    );
  }
}
