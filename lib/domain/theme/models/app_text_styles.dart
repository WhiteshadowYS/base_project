import 'package:base_project_template/domain/theme/interfaces/i_app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTextStyles implements IAppTextStyles {
  final String fontFamily;
  final Color? _titleTextColor;
  final Color? _mainTextColor;
  final Color? _accentTextColor;
  final Color? _additionalTextColor;

  AppTextStyles({
    required this.fontFamily,
    Color? titleTextColor,
    Color? mainTextColor,
    Color? accentTextColor,
    Color? additionalTextColor,
  })  : _titleTextColor = titleTextColor,
        _mainTextColor = mainTextColor,
        _accentTextColor = accentTextColor,
        _additionalTextColor = additionalTextColor;

  @override
  AppTextStyles copyWith({
    String? fontFamily,
    Color? titleTextColor,
    Color? mainTextColor,
    Color? accentTextColor,
    Color? additionalTextColor,
  }) {
    return AppTextStyles(
      fontFamily: fontFamily ?? this.fontFamily,
      titleTextColor: titleTextColor ?? _titleTextColor,
      mainTextColor: mainTextColor ?? _mainTextColor,
      accentTextColor: accentTextColor ?? _accentTextColor,
      additionalTextColor: additionalTextColor ?? _additionalTextColor,
    );
  }

  @override
  TextStyle titleTextStyle({double size = 20.0, double height = 1.0}) {
    return TextStyle(
      fontFamily: fontFamily,
      height: height,
      fontSize: size > 26.0 ? 26.0 : size,
      color: _titleTextColor,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle mainTextStyle({double size = 16.0, double? height}) {
    return TextStyle(
      fontFamily: fontFamily,
      height: height,
      fontSize: size > 20.0 ? 20.0 : size,
      color: _mainTextColor,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle accentTextStyle({double size = 14.0, Color? color, double? height, FontWeight fontWeight = FontWeight.w400, List<BoxShadow>? shadow}) {
    return TextStyle(
      shadows: shadow,
      fontFamily: fontFamily,
      height: height,
      fontSize: size > 30.0 ? 30.0 : size,
      color: color ?? _accentTextColor,
      fontWeight: fontWeight,
    );
  }

  TextStyle linkTextStyle({
    double size = 14.0,
    FontWeight? fontWeight,
    double? decorationThickness,
    Color? decorationColor,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size > 26.0 ? 26.0 : size,
      color: _accentTextColor,
      fontWeight: fontWeight,
      decoration: TextDecoration.underline,
      decorationThickness: decorationThickness,
      decorationColor: decorationColor,
    );
  }

  TextStyle buttonTextStyle({double size = 16.0, double? height}) {
    return TextStyle(
      fontFamily: fontFamily,
      height: height,
      fontSize: size > 20.0 ? 20.0 : size,
      color: _additionalTextColor,
      fontWeight: FontWeight.w500,
    );
  }
}
