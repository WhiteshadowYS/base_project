import 'dart:async';

import 'package:base_project/application/bloc/app_bloc.dart';
import 'package:base_project/common/network/interceptors/authorization_interceptor.dart';
import 'package:base_project/common/network/interceptors/error_interceptor.dart';
import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/resources/resources.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/utils/printers.dart';

abstract class InitAppUseCase extends BaseEvent<AppState, AppBloc> {
  @override
  void execute(bloc, emit, covariant AppBlocServices services) async {
    try {
      throw 'Error';
    } catch (e, trace) {
      errorPrint(
        e,
        object: this,
        error: 'Catch Error',
        trace: trace,
      );
    }
    blocPrint('InitAppUseCase, bloc', this);
    warningPrint('InitAppUseCase, warning', this);
    infoPrint('InitAppUseCase, info', this);
    dataPrint({'user': 'Yura', 'email': 'Email'}, this);

    await Future.delayed(Resources.durations.large);

    unawaited(UIManager.router.replace(LoginScreenRoute()));

    ErrorInterceptor.instance.init(
      errorOutput: (error) async => print('error: $error'),
    );

    AuthorizationInterceptor.instance.init(
      tokenGetter: () async => 'token',
    );

    emit(AppState.initialized());
    super.execute(bloc, emit, services);
  }
}
