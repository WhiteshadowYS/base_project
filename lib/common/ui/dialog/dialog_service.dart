import 'dart:collection';

import 'package:base_project/utils/printers.dart';
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
  final BuildContext? Function() _contextGetter;
  final bool? Function() _canPopGetter;
  final VoidCallback _closeDialog;

  DialogService(
    this._contextGetter,
    this._canPopGetter,
    this._closeDialog,
  );

  final HashMap<IDialog, bool> _dialogsStack = HashMap.from({});

  @override
  bool get isDisplayed => _dialogsStack.values.any((element) => element);

  /// This function starts the process of opening a dialog window.
  /// [dialog] param will take a class object extended from [IDialog] interface.
  @override
  Future<void> show([IDialog? dialog]) async {
    infoPrint('<show> => [isDisplayed: $isDisplayed]', this);

    if (dialog == null) {
      if (_dialogsStack.isNotEmpty) {
        infoPrint('<show> => Dialog attached from Stack!', this);
        dialog = _dialogsStack.keys.first;
      } else {
        warningPrint('<show> => Dialog stack is Empty!', this);
        return;
      }
    }

    if (!_dialogsStack.containsKey(dialog)) {
      _dialogsStack.addAll({dialog: false});
      infoPrint('<show> => Dialog $dialog added to Stack. Stack lng: ${_dialogsStack.length}', this);
    }

    if (!isDisplayed) {
      infoPrint('<show> => Dialog $dialog opened!', this);
      _dialogsStack[dialog] = true;
      await dialog.show(_display);
      infoPrint('<show> => Dialog $dialog closed!', this);

      return;
    }

    errorPrint(
      '<show> => Error Message: _isDisplayed: $isDisplayed',
      trace: StackTrace.current,
      error: 'Dialog cant be showed',
      object: this,
    );
  }

  /// This function will close opened dialog if [_isDisplayed] is true.
  /// And will show message to console if [_isDisplayed] is false.
  @override
  void close() {
    if (!isDisplayed) {
      warningPrint('<close> => Error Message: _isDisplayed: $isDisplayed, Dialog cant be removed.', this);
      return;
    }

    final bool _canPop = _canPopGetter() ?? false;

    if (_canPop) {
      _closeDialog();
      _dialogsStack.removeWhere((_, value) => value);
    }
  }

  @override
  void closeByKey(String key) {
    if (!isDisplayed) {
      warningPrint('<close> => Error Message: _isDisplayed: $isDisplayed, Dialog cant be removed.', this);
      return;
    }

    final bool _canPop = _canPopGetter() ?? false;

    if (_canPop) {
      final index = _dialogsStack.keys.toList().indexWhere((element) => element.key.toString().contains(key));

      if (index == -1) return;

      final dialog = _dialogsStack.keys.elementAt(index);

      final value = _dialogsStack[dialog];

      if (value ?? false) {
        _closeDialog();
        _dialogsStack.removeWhere((k, v) {
          return k.key.toString().contains(key);
        });
      }
    }
  }

  /// This function will start builder of [IDialog] object and will track the dialog state.
  /// if [_isDisplayed] is true - you will see in console a error message. (Dialog not be showed).
  /// if [_isDisplayed] is false - you will see on the screen a new dialog
  Future<void> _display(BuilderFunction builder) async {
    final BuildContext? ctx = _contextGetter();

    if (ctx == null) return;

    await builder(ctx);

    _dialogsStack.removeWhere((_, value) => value);
    FocusManager.instance.primaryFocus?.unfocus();

    if (_dialogsStack.isNotEmpty && !isDisplayed) {
      Future.delayed(Duration(milliseconds: 300), () async {
        infoPrint('<_display> => Stack isNotEmpty, show dialog from Stack!', this);
        await show();
      });
      return;
    }
  }
}
