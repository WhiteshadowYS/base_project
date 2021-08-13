import 'package:flutter/material.dart';
import 'package:base_project/common/ui/dialog/dialog_builders.dart';

/// Dialog Interface. All Dialogs models in the app should be extended from this interface.
/// Methods:
///   - [show] public method what accept [DisplayFunction] from [DialogManager] and will build a current dialog.
abstract class IDialog extends StatefulWidget {
  late final DialogBuilder? _builder;

  IDialog({required String keyValue, DialogBuilder? builder})
      : _builder = builder ?? DialogBuilders.defaultDialogBuilder,
        super(key: Key(keyValue));

  Future<void> _buildDialog(BuildContext context) async {
    await _builder!(context: context, widget: this);
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
});

/// Display function it function in the [DialogManager] what will track a [IDialog] state.
typedef DisplayFunction = Future<void> Function(BuilderFunction);

/// [BuilderFunction] it function what will accept [DisplayFunction] from [IDialog]. This function will using for build dialog.
typedef BuilderFunction = Future<void> Function(BuildContext context);
