import 'dart:async';

import 'package:base_project/common/ui/loader/loader.dart';
import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class SignInUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  SignInContract get contract;

  @override
  void execute(bloc, emit, covariant AuthorizationBlocServices services) async {
    UIManager.logger.i('SignInEvent: Start', this);
    Loader.instance.start<SignInUseCase>();

    // final response = await bloc.state.user?.signIn(contract);

    // dataPrint('response: $response', this);

    await Future.delayed(Duration(seconds: 3));

    unawaited(UIManager.router.replace(BottomBarScreenRoute()));

    Loader.instance.stop<SignInUseCase>();

    super.execute(bloc, emit, services);
  }
}
