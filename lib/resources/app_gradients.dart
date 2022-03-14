import 'package:base_project/resources/resources.dart';
import 'package:flutter/material.dart';

class AppGradients {
  final LinearGradient primaryGradient = LinearGradient(
    colors: [
      Resources.colors.primary,
      Resources.colors.accent,
    ],
  );

  final LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    stops: [
      0.15,
      0.6,
      1.0,
    ],
    colors: [
      Resources.colors.success.withOpacity(0.3),
      Resources.colors.white.withOpacity(0.4),
      Resources.colors.accent.withOpacity(0.35),
    ],
  );
}
