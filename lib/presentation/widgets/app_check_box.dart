import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final bool initialValue;
  final void Function(bool) onChange;

  AppCheckBox({
    required this.initialValue,
    required this.onChange,
  });

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool value = false;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => value = !value);
        widget.onChange(value);
      },
      child: _getIcon(),
    );
  }

  Icon _getIcon() {
    if (value) {
      return Icon(
        Icons.check_box,
        color: Colors.white,
      );
    }

    return Icon(
      Icons.check_box_outline_blank,
      color: Colors.white,
    );
  }
}
