import 'package:flutter/material.dart';

import 'dialog_builders.dart';

/// Dialog Interface. All Dialogs models in the app should be extended from this interface.
/// Methods:
///   - [show] public method what accept [DisplayFunction] from [DialogManager] and will build a current dialog.
abstract class IDialog extends StatefulWidget {
  final Color? barierColor;
  final bool isScrollControlled;
  final int fill;
  late final DialogBuilder? _builder;

  IDialog({
    required String keyValue,
    DialogBuilder? builder,
    this.barierColor,
    this.isScrollControlled = false,
    this.fill = 90,
  })  : _builder = builder ?? DialogBuilders.defaultDialogBuilder,
        super(key: Key(keyValue));

  Future<void> _buildDialog(BuildContext context) async {
    await _builder!(
      context: context,
      widget: this,
      barierColor: barierColor,
      isScrollControlled: isScrollControlled,
      fill: fill,
    );
  }

  Future<void> show(DisplayFunction display) => display(_buildDialog);

  @override
  State<StatefulWidget> createState() => IDialogState<IDialog>();
}

class IDialogState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}

typedef DialogBuilder = Future<void> Function({
  required BuildContext context,
  required Widget widget,
  Color? barierColor,
  bool isScrollControlled,
  int fill,
});

/// Display function it function in the [DialogManager] what will track a [IDialog] state.
typedef DisplayFunction = Future<void> Function(BuilderFunction);

/// [BuilderFunction] it function what will accept [DisplayFunction] from [IDialog]. This function will using for build dialog.
typedef BuilderFunction = Future<void> Function(BuildContext context);
