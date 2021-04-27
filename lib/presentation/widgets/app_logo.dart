import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:base_project/utils/res/style/default_colors.dart';

class AppLogo extends StatelessWidget {
  final Color color;
  final double size;

  AppLogo({
    this.color = DefaultAppColors.white,
    this.size = 42.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'BaseApp',
      style: GoogleFonts.lobster(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
