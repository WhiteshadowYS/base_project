import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

class AppBlocObserver extends BlocObserver {
  Logger get _logger => Logger('AppBlocObserver');

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logger.info('$event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.info('$transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.info('$error, $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
