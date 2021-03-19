import 'package:flutter/material.dart';

/// Dialog Interface. All Dialogs models in the app should be extended from this interface.
/// Methods:
///   - [show] public method what accept [DisplayFunction] from [DialogManager] and will build a current dialog.
abstract class IDialog {
  Future<void> show(DisplayFunction display);
}

/// Display function it function in the [DialogManager] what will track a [IDialog] state.
typedef DisplayFunction = Future<void> Function(BuilderFunction);

/// [BuilderFunction] it function what will accept [DisplayFunction] from [IDialog]. This function will using for build dialog.
typedef BuilderFunction = Future<void> Function(BuildContext context);
