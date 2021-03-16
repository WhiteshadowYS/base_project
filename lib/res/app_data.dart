import './app_settings.dart';
import './style/app_gradients.dart';
import './app_consts.dart';
import './app_keys.dart';
import './app_locales.dart';
import './style/app_shadows.dart';
import './assets/images.dart';
import './api.dart';

export './app_keys.dart';
export './app_consts.dart';
export './app_locales.dart';
export './app_settings.dart';

export './assets/images.dart';
export './assets/icons/bottom_bar_icons.dart';

export './style/default_colors.dart';
export './style/app_shadows.dart';
export './style/app_gradients.dart';

abstract class AppData {
  static Images get images => Images();
  static AppKeys get keys => AppKeys();
  static AppShadows get shadows => AppShadows();
  static AppLocales get locales => AppLocales();
  static AppSettings get settings => AppSettings();
  static AppGradient get gradients => AppGradient();
  static Durations get durations => Durations();
  static DesignSizes get designSizes => DesignSizes();
  static DefaultStrings get defaultStrings => DefaultStrings();
  static ResponseKeys get responseKeys => ResponseKeys();
}
