import 'package:flutter/material.dart';

class DialogBuilders {
  static Future<void> defaultDialogBuilder({
    required BuildContext context,
    required Widget widget,
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext ctx) => widget,
    );
  }

  static Future<void> modalBottomSheetBuilder({
    required BuildContext context,
    required Widget widget,
  }) {
    return showModalBottomSheet<dynamic>(
      context: context,
      elevation: 0.0,
      clipBehavior: Clip.hardEdge,
      builder: (BuildContext ctx) => widget,
    );
  }
}
