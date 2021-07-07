import 'package:flutter/material.dart';

abstract class IThemeConfig {
  ThemeData get theme;

  Color get primary;
  Color get accent;
  Color get background;
}
