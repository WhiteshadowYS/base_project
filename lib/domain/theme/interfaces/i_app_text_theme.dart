import 'package:flutter/painting.dart';

abstract class IAppTextStyles {
  TextStyle titleTextStyle({double size, double height});

  TextStyle mainTextStyle({double size, double height});

  IAppTextStyles copyWith({
    String fontFamily,
    Color titleTextColor,
    Color mainTextColor,
    Color additionalTextColor,
  });
}
