import 'package:flutter/material.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/presentors/dialog/i_dialog.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';
import 'package:base_project/presentation/dialogs/default_dialog.dart';
import 'package:base_project/common/presentors/dialog/dialog_builders.dart';
import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';

class ErrorDialog implements IDialog {
  final String error;

  const ErrorDialog(this.error);

  Widget get widget => DefaultDialog(
        title: dependencyContainer!.get<IDictionary<Language>>().data.global.errorTitle ?? '',
        content: error,
        button: 'Got It',
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
