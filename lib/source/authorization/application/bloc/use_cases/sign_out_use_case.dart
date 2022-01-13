import 'dart:async';

import 'package:base_project/utils/data_print.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

abstract class SignOutUseCase extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  SignOutContract get contract;

  @override
  Future<void> execute(AuthorizationBloc bloc, dynamic emit) async {
    dataPrint('SignOutEvent: Start', this);

    unawaited(router.replace(BaseScreenRoute()));
  }
}
