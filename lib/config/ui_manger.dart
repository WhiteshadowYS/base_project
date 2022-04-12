import 'package:base_project/common/ui/dialog/i_dialog_service.dart';
import 'package:base_project/common/ui/loader/loader.dart';
import 'package:base_project/common/ui/theme/i_theme_config.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/config/config.dart';

export './app_router.dart';

abstract class UIManager {
  static AppRouter get router => getIt<AppRouter>();
  static IDialogService get dialog => getIt<IDialogService>();
  static IThemeConfig get theme => getIt<IThemeConfig>();
  static Loader get loader => getIt<Loader>();
}
