import 'dart:async';

import 'package:base_project/common/ui/loader/loader.dart';
import 'package:base_project/source/auth/application/bloc/auth_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class SignInUseCase extends BaseEvent<AuthState, AuthBloc> {
  @override
  void execute(bloc, emit, covariant AuthServices services) async {
    emit(AuthState.initial());
    Loader.instance.start<SignInUseCase>();

    final response = await services.authRepository.signIn();

    // dataPrint('response: $response', this);

    await Future.delayed(Duration(seconds: 3));

    // unawaited(UIManager.router.replace(BottomBarScreenRoute()));

    Loader.instance.stop<SignInUseCase>();
  }
}
