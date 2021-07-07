import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/src/shared/application/bloc/app_bloc.dart';
import 'package:base_project/utils/base_elements/base_event.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:logging/logging.dart';

abstract class InitAppEvent extends BaseEvent<AppState, AppBloc> {
  Logger get _logger => Logger('[$runtimeType #${identityHashCode(this)}] =>');

  @override
  Stream<AppState> action(AppBloc bloc) async* {
    _logger.fine('InitAppStart');
    await Future.delayed(AppData.durations.milliseconds500);
    await router.push(LoginScreenRoute());
  }
}
