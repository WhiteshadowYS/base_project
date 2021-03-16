import 'package:base_project_template/domain/managers/dialog_manager/dialog_manager.dart';
import 'package:flutter/material.dart';

/// [RouteService] it is service for routing in application.
/// This class it - Singleton, for function using use [RouteService.instance]
/// - For init service use method [init] in [PushNotificationsService].
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

class RouteService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext? get ctx => navigatorKey.currentState?.overlay?.context;

  static const tag = '[RouteService]';

  RouteService._privateConstructor();

  static final RouteService _instance = RouteService._privateConstructor();

  static RouteService get instance => _instance;

  final List<String> _history = [];

  String? get currentRoute => _history.isNotEmpty ? _history.last : null;

  bool get canPop => Navigator.canPop(ctx!) && _history.length > 1;

  bool get _isDialogDisplayed => DialogManager.instance.isDisplayed;

  void pop() {
    if (_isDialogDisplayed) return;
    if (_history.isEmpty) return;

    _history.removeLast();
    Navigator.pop(ctx!);
  }

  void push(String route) {
    if (_isDialogDisplayed) return;
    if (_history.isNotEmpty && _history.last == route) return;

    if (_history.length > 2 && _history[_history.length - 2] == route) {
      pop();
      return;
    }

    _history.add(route);
    Navigator.pushNamed(ctx!, route);
  }

  void pushAndRemoveUntil(String route) {
    if (_isDialogDisplayed) return;
    if (_history.isNotEmpty && _history.last == route) return;

    _history.clear();
    _history.add(route);

    Navigator.pushNamedAndRemoveUntil(ctx!, route, (route) => false);
  }

  void replace(String route) {
    if (_isDialogDisplayed) return;
    if (_history.isNotEmpty && _history.last == route) return;

    if (_history.isNotEmpty) _history.removeLast();
    _history.add(route);

    Navigator.pushReplacementNamed(ctx!, route);
  }
}
