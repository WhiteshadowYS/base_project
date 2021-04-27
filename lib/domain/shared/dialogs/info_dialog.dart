import 'package:flutter/material.dart';
import 'package:base_project/common/presentors/dialog/i_dialog.dart';
import 'package:base_project/presentation/dialogs/default_dialog.dart';
import 'package:base_project/common/presentors/dialog/dialog_builders.dart';

class InfoDialog implements IDialog {
  final String content;
  final String title;
  final String button;

  const InfoDialog({
    required this.title,
    required this.content,
    required this.button,
  });

  Widget get widget => DefaultDialog(
        title: title,
        content: content,
        button: button,
      );

  Future<void> _builder(BuildContext context) async {
    return await DialogBuilders.defaultDialogBuilder(
      widget: widget,
      context: context,
    );
  }

  @override
  Future<void> show(DisplayFunction display) async => await display(_builder);
}
