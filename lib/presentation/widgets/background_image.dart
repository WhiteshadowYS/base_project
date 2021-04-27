import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  BackgroundImage({
    required this.child,
    required this.height,
    required this.width,
  });

  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          SizedBox(
            height: width,
            width: height,
            child: _screenManager.typedScreenBuilder(
              phoneBuilder: (BuildContext context, Widget child) => child,
              webBuilder: (BuildContext context, Widget child) => Image.asset(
                AppData.images.backgroundHorizontal,
                fit: BoxFit.cover,
              ),
              tabletBuilder: (BuildContext context, Widget child) => Image.asset(
                AppData.images.backgroundHorizontal,
                fit: BoxFit.cover,
              ),
              child: Image.asset(
                AppData.images.background,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: DefaultAppColors.black.withOpacity(0.7),
              backgroundBlendMode: BlendMode.darken,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
