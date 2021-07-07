import 'package:base_project/src/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:logging/logging.dart';

abstract class LogoutEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  @override
  Stream<AuthorizationState> action(AuthorizationBloc bloc) async* {
    _logger.info('Logout: Start');
    final response = await bloc.state.user.logout(bloc.authService);

    if (response) {
      _logger.info('Logout: Success');
    }
  }
}
