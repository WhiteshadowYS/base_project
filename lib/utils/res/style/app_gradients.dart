import 'package:flutter/material.dart';
import 'package:base_project/utils/res/style/default_colors.dart';

class AppGradient {
  static LinearGradient get mainGradient {
    return LinearGradient(
      colors: [
        DefaultAppColors.mainPurple,
        DefaultAppColors.mainPink,
      ],
    );
  }
}
