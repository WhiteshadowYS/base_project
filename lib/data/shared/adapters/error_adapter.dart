import 'dart:convert';

import 'package:base_project/common/presentors/dialog/i_dialog_presenter.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/domain/shared/dialogs/error_dialog.dart';
import 'package:logging/logging.dart';
import 'package:base_project/utils/cap_exstension.dart';

abstract class IErrorAdapter {
  void call(String error);
}

class ErrorAdapter implements IErrorAdapter {
  final AppConfig config;
  final IDialogPresenter _dialogPresenter;

  ErrorAdapter(this.config, this._dialogPresenter);

  @override
  void call(String errorsStr) {
    if (!config.enableLogs) _dialogPresenter.show(ErrorDialog(errorsStr));

    try {
      String outputText = '';
      final Map<String, dynamic> dataMap = jsonDecode(errorsStr);

      dataMap.forEach((String field, dynamic errors) {
        String errorText = '';

        if (errors is List) {
          for (dynamic error in errors) {
            errorText += error;
            if (errors.last != error) {
              errorText += ', ';
            }
          }
        } else if (errors is String) {
          errorText += errors;
        }

        errorText = '${field.inCaps}: ${errorText.inCaps}\n';
        outputText += errorText;
      });

      _dialogPresenter.show(ErrorDialog(outputText));
    } catch (e) {
      _dialogPresenter.show(ErrorDialog(errorsStr));
    }
  }
}
