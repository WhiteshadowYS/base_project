import 'package:base_project_template/config/bloc/app_event.dart';
import 'package:base_project_template/config/bloc/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState(locale: Locale('en')));

  static changeLocale(BuildContext context, Locale locale) {
    BlocProvider.of<AppBloc>(context).add(ChangeLocale(locale));
  }

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is InitializeApp) {
      // yield* _initApp(event);
    }

    if (event is ChangeLocale) {
      yield* _changeAppLocale(event);
    }
  }

  Stream<AppState> _changeAppLocale(ChangeLocale event) async* {
    // await setStringPreference(Constants.appLangKey, '${event.locale.languageCode},${event.locale.countryCode}');
    // yield state.copyWith(currentLocale: event.locale);
  }
}
