import 'dart:async';

import 'package:base_project/config/application/bloc/use_cases/init_app_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState());

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    yield* event.execute(this);
  }
}
