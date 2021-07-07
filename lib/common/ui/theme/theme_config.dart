import 'package:base_project/common/ui/theme/i_theme_config.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';

class ThemeConfig implements IThemeConfig {
  final ThemeData _themeData;

  ThemeConfig({
    required ThemeData themeData,
  }) : _themeData = themeData;

  BuildContext? get context => getIt<AppRouter>().navigatorKey.currentState?.overlay?.context;

  @override
  ThemeData get theme => _themeData;

  @override
  Color get primary => Theme.of(context!).primaryColor;

  @override
  Color get accent => Theme.of(context!).accentColor;

  @override
  Color get background => Theme.of(context!).backgroundColor;
}
