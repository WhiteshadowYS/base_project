import 'package:flutter/material.dart';

class AppShadows {
  static List<BoxShadow> defaultShadow(Color color) {
    return [
      BoxShadow(
        offset: Offset(0, 0),
        color: color.withOpacity(0.06),
        blurRadius: 4.0,
      ),
      BoxShadow(
        offset: Offset(4, 4),
        color: color.withOpacity(0.12),
        blurRadius: 8.0,
      ),
    ];
  }
}
