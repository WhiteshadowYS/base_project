import 'dart:async';

import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class SignUpUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  SignUpContract get contract;

  @override
  void execute(bloc, emit, covariant AuthorizationBlocServices services) async {
    unawaited(UIManager.router.replace(BottomBarScreenRoute()));
    super.execute(bloc, emit, services);
  }
}
