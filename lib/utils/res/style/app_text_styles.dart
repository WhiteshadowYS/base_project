import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const black = Color(0xFF000000);

  TextStyle largeTitle({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 42.0 * scale,
      letterSpacing: 0.37,
      fontWeight: FontWeight.w600,
      height: 1.2,
    );
  }

  TextStyle title1({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 28.0 * scale,
      letterSpacing: 0.37,
      fontWeight: FontWeight.w700,
      height: 1.4,
    );
  }

  TextStyle title2({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 22.0 * scale,
      letterSpacing: 0.37,
      fontWeight: FontWeight.w600,
      height: 1.4,
    );
  }

  TextStyle title3({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 20.0 * scale,
      letterSpacing: 0.37,
      fontWeight: FontWeight.w600,
      height: 1.4,
    );
  }

  TextStyle headline({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 17.0 * scale,
      letterSpacing: -0.41,
      fontWeight: FontWeight.w600,
      height: 1.4,
    );
  }

  TextStyle body({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 17.0 * scale,
      letterSpacing: -0.41,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle buttons({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 17.0 * scale,
      letterSpacing: -0.41,
      fontWeight: FontWeight.w600,
      height: 1.4,
    );
  }

  TextStyle callout({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 16.0 * scale,
      letterSpacing: -0.32,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle subhead({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 15.0 * scale,
      letterSpacing: -0.24,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle footnote({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 13.0 * scale,
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle caption1({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 12.0 * scale,
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle caption2({Color color = black, double scale = 1.0}) {
    return GoogleFonts.tajawal(
      color: color,
      fontSize: 11.0 * scale,
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }
}
