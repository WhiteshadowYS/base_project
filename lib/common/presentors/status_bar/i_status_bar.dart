import 'package:flutter/material.dart';

abstract class IStatusBar {
  void setColor(Color color);
  void setBrightness(Brightness brightness);
  void setBrightnessFromScreen();
}
