import 'package:base_project_template/domain/managers/dialog_manager/dialog_manager.dart';
import 'package:logging/logging.dart';

export './route_builder.dart';
export './route_manager.dart';
export './res/routes.dart';

/// [RouteManager] it is service for routing in application.
/// This class it - Singleton, for function using use [RouteManager.instance]
/// - For init service use method [init] in [PushNotificationsManager].
/// - For get get current route you can use [currentRoute] getter.
/// - For get info if you can make pop use [canPop] getter.
/// - [_history] this list stores the history of page transitions in the form of routes.
/// Methods:
/// - [_isDialogDisplayed] check if and dialog is displayed.
/// - [pop] this method check if routes history is not empty and if any dialog is displayed, delete last route from history and make Pop
/// - [push] this method check if routes history is not empty, if any dialog is displayed and if next route not equal to current route
///           then add to history route passed as a parameter and make push to this route.
/// - [pushAndRemoveUntil] this method check if routes history is not empty, if any dialog is displayed and if next route not equal to current route
///                        then clear history, add to history route passed as a parameter and make pushNamedAndRemoveUntil to this route.
/// - [replace] this method check if routes history is not empty, if any dialog is displayed and if next route not equal to current route,
///             then check if history is not empty and remove last route from history. After that it make replace to route passed as a parameter.

class RouteManager {
  Logger get logger => Logger('$runtimeType');

  RouteManager._privateConstructor();

  static final RouteManager _instance = RouteManager._privateConstructor();

  static RouteManager get instance => _instance;

  final List<String> _history = [];

  String? get currentRoute => _history.isNotEmpty ? _history.last : null;

  bool? get canPop {
    // TODO: Fix to global key
    // return NavigatorHolder.navigatorKey.currentState.canPop() && _history.length > 1;
  }

  // NavigateToAction pop() {
  //   if (_isDialogDisplayed()) return null;
  //   if (_history == null || _history.isEmpty) return null;

  //   _history.removeLast();

  //   logger.info('<pop> => Did pop!');
  //   return NavigateToAction.pop();
  // }

  // NavigateToAction push(String route) {
  //   if (_history == null || _isDialogDisplayed()) return null;
  //   if (_history.isNotEmpty && _history.last == route) return null;

  //   if (_history.length > 2 && _history[_history.length - 2] == route) {
  //     logger.info('<push> => Did pop!');
  //     return pop();
  //   }

  //   _history.add(route);

  //   logger.info('<push> => Did push!');
  //   return NavigateToAction.push(route);
  // }

  // NavigateToAction pushAndRemoveUntil(String route) {
  //   if (_history == null || _isDialogDisplayed()) return null;
  //   if (_history.isNotEmpty && _history.last == route) return null;

  //   logger.info('<pushAndRemoveUntil> => Did pushAndRemoveUntil!');
  //   _history.clear();
  //   _history.add(route);

  //   return NavigateToAction.pushNamedAndRemoveUntil(route, (route) => false);
  // }

  // NavigateToAction replace(String route) {
  //   if (_isDialogDisplayed()) return null;
  //   if (_history.isNotEmpty && _history.last == route) return null;

  //   if (_history.isNotEmpty) _history.removeLast();

  //   logger.info('<replace> => Did replace!');
  //   _history.add(route);

  //   return NavigateToAction.replace(route);
  // }

  bool _isDialogDisplayed() => DialogManager.instance.isDisplayed;
}
