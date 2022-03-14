import 'package:base_project/common/ui/dialog/i_dialog.dart';
import 'package:flutter/material.dart';

class DialogBuilders {
  static DialogBuilder get defaultDialogBuilder {
    return ({
      required BuildContext context,
      required Widget widget,
    }) async {
      return await showDialog(
        context: context,
        barrierColor: Colors.transparent,
        builder: (BuildContext ctx) => widget,
      );
    };
  }

  static DialogBuilder get modalBottomSheetBuilder {
    return ({
      required BuildContext context,
      required Widget widget,
    }) {
      return showModalBottomSheet<dynamic>(
        context: context,
        elevation: 0.0,
        clipBehavior: Clip.hardEdge,
        builder: (BuildContext ctx) => widget,
      );
    };
  }
}
