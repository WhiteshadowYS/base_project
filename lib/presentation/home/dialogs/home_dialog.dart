import 'package:flutter/material.dart';
import 'package:base_project/common/ui/dialog/i_dialog.dart';
import 'package:base_project/common/ui/dialog/dialog_layout.dart';

class HomeDialog extends IDialog {
  HomeDialog() : super(keyValue: 'HomeDialogKey');

  @override
  _HomeDialogState createState() => _HomeDialogState();
}

class _HomeDialogState extends IDialogState<HomeDialog> {
  @override
  Widget build(BuildContext context) {
    return DialogLayout(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text('Hello'),
      ),
    );
  }
}
