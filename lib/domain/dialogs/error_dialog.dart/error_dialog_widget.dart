import 'package:base_project_template/domain/dialogs/error_dialog.dart/error_dialog.dart';
import 'package:base_project_template/domain/managers/dialog_manager/dialog_manager.dart';
import 'package:flutter/material.dart';

class ErrorDialogWidget extends StatelessWidget {
  final ErrorDialog dialog;

  ErrorDialogWidget(this.dialog);

  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      child: Center(
        child: Text(
          dialog.message,
        ),
      ),
    );
  }
}
