import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const _black = Color(0xFF45486A);

  double getSize(double size) => size + ((size.w - size) / 2.3);

  TextStyle largeTitle({
    Color color = _black,
    double scale = 1.0,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(36.0 * scale),
      letterSpacing: 0.37,
      fontWeight: fontWeight,
      height: 1.2,
    );
  }

  TextStyle title1({
    Color color = _black,
    double scale = 1.0,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(28.0 * scale),
      letterSpacing: 0.37,
      fontWeight: fontWeight,
      height: 1.4,
    );
  }

  TextStyle title2({
    Color color = _black,
    double scale = 1.0,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(22.0 * scale),
      letterSpacing: 0.37,
      fontWeight: fontWeight,
      height: 1.4,
    );
  }

  TextStyle title3({
    Color color = _black,
    double scale = 1.0,
    TextDecoration? decoration,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(20.0 * scale),
      letterSpacing: 0.37,
      fontWeight: fontWeight,
      height: 1.4,
    );
  }

  TextStyle headline({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(17.0 * scale),
      letterSpacing: -0.41,
      fontWeight: FontWeight.w500,
      height: 1.4,
    );
  }

  TextStyle body({
    Color color = _black,
    double scale = 1.0,
    double size = 16.0,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(size * scale),
      letterSpacing: -0.41,
      fontWeight: fontWeight,
      height: 1.4,
    );
  }

  TextStyle buttons({
    Color color = _black,
    double scale = 1.0,
    double size = 16.0,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(size * scale),
      letterSpacing: -0.41,
      fontWeight: fontWeight,
      height: 1.4,
    );
  }

  TextStyle callout({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(16.0 * scale),
      letterSpacing: -0.32,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle subhead({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(15.0 * scale),
      letterSpacing: -0.24,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle footnote({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(13.0 * scale),
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle caption1({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(12.0 * scale),
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }

  TextStyle caption2({Color color = _black, double scale = 1.0}) {
    return GoogleFonts.roboto(
      color: color,
      fontSize: getSize(11.0 * scale),
      letterSpacing: -0.08,
      fontWeight: FontWeight.w400,
      height: 1.4,
    );
  }
}
