import 'package:base_project/src/authorization/application/bloc/authorization_bloc.dart';
import 'package:base_project/src/authorization/domain/models/login_data.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:logging/logging.dart';

abstract class LoginEvent extends BaseEvent<AuthorizationState, AuthorizationBloc> {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  LoginData get data;

  @override
  Stream<AuthorizationState> action(AuthorizationBloc bloc) async* {
    _logger.info('LoginEvent: Start');
    final response = await bloc.state.user.login(bloc.authService, data);

    if (response != null) {
      yield bloc.state.copyWith(
        user: response,
      );
    }
  }
}
