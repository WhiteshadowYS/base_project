import 'package:base_project_template/config/bloc/app_event.dart';
import 'package:base_project_template/config/bloc/app_state.dart';
import 'package:base_project_template/dictionary/flutter_dictionary.dart';
import 'package:base_project_template/domain/managers/route_service/models/routes.dart';
import 'package:base_project_template/domain/managers/route_service/route_service.dart';
import 'package:base_project_template/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState(locale: Locale('en')));

  static void changeLocale(BuildContext context, Locale locale) {
    BlocProvider.of<AppBloc>(context).add(ChangeLocale(locale));
  }

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is InitializeApp) {
      yield* _initApp(event);
    }

    if (event is ChangeLocale) {
      yield* _changeAppLocale(event);
    }
  }

  Stream<AppState> _initApp(InitializeApp event) async* {
    FlutterDictionary.instance.setNewLanguage(AppData.locales.base);
    await Future.delayed(Duration(seconds: 1));
    RouteService.instance.pushAndRemoveUntil(Routes.login_screen);
  }

  Stream<AppState> _changeAppLocale(ChangeLocale event) async* {
    yield state.copyWith(locale: event.locale);
  }
}
