import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

abstract class SignOutEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  SignOutContract get contract;

  @override
  Stream<AuthorizationState> action(AuthorizationBloc bloc) async* {
    dataPrint('SignOutEvent: Start', this);

    await router.replace(BaseScreenRoute());
  }
}
