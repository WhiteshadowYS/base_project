import 'package:base_project/config/ui_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'i_dialog.dart';
import 'i_dialog_service.dart';

/// [DialogManager] it is service for control dialogs.
/// This class it - Singleton, for function using use [DialogManager.instance]
/// - For show dialog use method [show] in [DialogManager].
/// You need send to this function a class extended from [IDialog].
/// - For close dialog you can use [close] method.
/// - For checking is dialog opened you can use [_isDisplayed] boolean param.
class DialogService implements IDialogService {
  final AppRouter _router;
  DialogService(this._router);

  /// This variable helps us track the state of dialogs.
  bool _isDisplayed = false;

  @override
  bool get isDisplayed => _isDisplayed;

  /// This function starts the process of opening a dialog window.
  /// [dialog] param will take a class object extended from [IDialog] interface.
  @override
  Future<void> show(IDialog dialog) async => await dialog.show(_display);

  /// This function will close opened dialog if [_isDisplayed] is true.
  /// And will show message to console if [_isDisplayed] is false.
  @override
  void close() {
    if (!_isDisplayed) {
      UIManager.logger.i('<closeDialog> => Error Message: _isDisplayed: $_isDisplayed, Dialog cant be removed.');
      return;
    }

    if (_router.navigatorKey.currentState?.canPop() ?? false) {
      _router.pop();
      _isDisplayed = false;
    }
  }

  /// This function will start builder of [IDialog] object and will track the dialog state.
  /// if [_isDisplayed] is true - you will see in console a error message. (Dialog not be showed).
  /// if [_isDisplayed] is false - you will see on the screen a new dialog
  Future<void> _display(BuilderFunction builder) async {
    UIManager.logger.i('Is displayed $_isDisplayed', this);
    if (_isDisplayed) {
      UIManager.logger.w('<_display> => Error Message: _isDisplayed: $_isDisplayed, Dialog cant be showed.', this);
      return;
    }

    _isDisplayed = true;

    final BuildContext? ctx = _router.navigatorKey.currentState?.overlay?.context;

    if (ctx == null) return;

    await builder(ctx).then((_) {
      FocusScope.of(ctx).unfocus();
      _isDisplayed = false;
    });
  }
}
