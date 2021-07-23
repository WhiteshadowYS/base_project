import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:logging/logging.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/source/authorization/application/bloc/authorization_bloc.dart';

abstract class SignInEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  SignInContract get contract;

  @override
  Stream<AuthorizationState> action(AuthorizationBloc bloc) async* {
    _logger.info('SignInEvent: Start');

    final response = await bloc.state.user?.signIn(contract);

    print('response: $response');
    await router.replace(BaseScreenRoute());
  }
}
