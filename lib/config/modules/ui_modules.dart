import 'package:base_project/common/ui/bottom_bar/bottom_bar.dart';
import 'package:base_project/common/ui/bottom_bar/examples/bottom_bar_example_1.dart';
import 'package:base_project/common/ui/bottom_bar/i_bottom_bar.dart';
import 'package:base_project/common/ui/theme/i_theme_config.dart';
import 'package:base_project/common/ui/theme/theme_config.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/main/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class UIModules {
  @singleton
  @factoryMethod
  IBottomBar get bottomBar {
    return DefaultBottomBar(
      addListener: (listener) => router.delegate().addListener(() {
        final String? _path = router.current?.path;
        listener(_path?.contains('bottom-bar') ?? false);
      }),
      bottomBarBuilder: (bool isOpened) {
        return BottomBarExample1(
          isOpened: isOpened,
          children: [
            Center(
              child: InkWell(
                onTap: () => router.push(HomeScreenRoute()),
                child: Container(
                  color: router.current?.path == HomeScreenRoute().path ? Colors.blue : Colors.red,
                  height: 50.0,
                  width: 50.0,
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () => router.push(ProfileScreenRoute()),
                child: Container(
                  color: router.current?.path == ProfileScreenRoute().path ? Colors.blue : Colors.red,
                  height: 50.0,
                  width: 50.0,
                ),
              ),
            ),
          ],
        );
      },
    )..init();
  }

  @singleton
  @factoryMethod
  IThemeConfig get themeConfig {
    return ThemeConfig(
      themeData: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.white,
      ),
    );
  }
}
