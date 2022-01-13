import 'dart:async';

import 'package:base_project/utils/data_print.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/resources/resources.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/config/application/bloc/app_bloc.dart';

abstract class InitAppUseCase extends BaseEvent<AppState, AppBloc> {
  @override
  Future<void> execute(AppBloc bloc, dynamic emit) async {
    dataPrint('InitAppStart', this);
    await Future.delayed(Resources.durations.large);

    unawaited(router.replace(LoginScreenRoute()));

    emit(AppState.initialized());
  }
}
