import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/common/ui/loader/loader.dart';
import 'package:base_project/common/ui/loader/i_loader.dart';
import 'package:base_project/common/ui/theme/theme_config.dart';
import 'package:base_project/common/ui/theme/i_theme_config.dart';
import 'package:base_project/common/ui/dialog/dialog_service.dart';
import 'package:base_project/common/ui/dialog/i_dialog_service.dart';

@module
abstract class UIModules {
  @singleton
  @factoryMethod
  IDialogService get dialogService => DialogService(router);

  @singleton
  @factoryMethod
  ILoader get loader {
    return Loader(
      loader: Center(
        child: CircularProgressIndicator(),
      ),
    );
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
