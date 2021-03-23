import 'package:flutter/material.dart';

class AppGradient {
  static LinearGradient get mainGradient {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.red,
      ],
    );
  }
}
