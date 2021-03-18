import 'package:base_project_template/domain/dialogs/error_dialog.dart/error_dialog_widget.dart';
import 'package:base_project_template/domain/managers/dialog_manager/dialog_manager.dart';
import 'package:flutter/material.dart';

class ErrorDialog implements IDialog {
  final String title;
  final String message;

  ErrorDialog({
    required this.message,
    this.title = 'ERROR',
  });

  Future<void> _builder(BuildContext context) async {
    return await DialogBuilders.defaultDialogBuilder(
      context: context,
      widget: ErrorDialogWidget(this),
    );
  }

  @override
  Future<void> show(DisplayFunction display) async => await display(_builder);
}
