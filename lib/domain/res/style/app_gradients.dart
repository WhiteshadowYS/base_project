import 'package:base_project_template/domain/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class AppGradient {
  static LinearGradient get mainGradient {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        CustomTheme.colors?.primaryColor ?? Colors.white,
      ],
    );
  }
}
