import 'package:flutter/material.dart';

import 'i_dialog.dart';

class DialogBuilders {
  static DialogBuilder get defaultDialogBuilder {
    return ({
      required BuildContext context,
      required Widget widget,
      Color? barierColor,
      bool isScrollControlled = false,
      int fill = 90,
    }) async {
      return await showDialog(
        context: context,
        barrierColor: barierColor ?? Colors.transparent,
        builder: (BuildContext ctx) => widget,
      );
    };
  }

  static DialogBuilder get modalBottomSheetBuilder {
    return ({
      required BuildContext context,
      required Widget widget,
      Color? barierColor,
      bool isScrollControlled = false,
      int fill = 90,
    }) {
      return showModalBottomSheet<dynamic>(
        context: context,
        elevation: 0.0,
        barrierColor: barierColor,
        backgroundColor: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        isScrollControlled: isScrollControlled,
        builder: (BuildContext ctx) => SizedBox(
          height: MediaQuery.of(context).size.height / 100 * fill,
          child: widget,
        ),
      );
    };
  }
}
