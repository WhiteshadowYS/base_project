import 'package:base_project/config/application/bloc/app_bloc.dart';
import 'package:logging/logging.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/utils/base_elements/base_event.dart';

abstract class InitAppUseCase extends BaseEvent<AppState, AppBloc> {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  @override
  Stream<AppState> execute(AppBloc bloc) async* {
    _logger.fine('InitAppStart');
    await Future.delayed(AppData.durations.milliseconds500);
    await router.replace(LoginScreenRoute());
  }
}
