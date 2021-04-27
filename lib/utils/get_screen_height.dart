import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';

double getScreenHeight(BuildContext context, {double scale = 1.0, double? minimalScreenHeight}) {
  final double screenSize = MediaQuery.of(context).size.height;

  final double minimalHeight = minimalScreenHeight ?? AppData.designSizes.minimalScreenHeight;

  if (screenSize < minimalHeight * scale) {
    return minimalHeight * scale;
  }

  return screenSize;
}
