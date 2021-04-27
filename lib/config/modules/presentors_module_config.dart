import 'dart:ui';

import 'package:base_project/presentation/pages/auth_screens/terms_screen.dart/terms_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/dialogs/loader.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';
import 'package:base_project/common/presentors/side_menu/menu_item.dart';
import 'package:base_project/common/presentors/status_bar/status_bar.dart';
import 'package:base_project/presentation/layouts/side_menu/side_menu.dart';
import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';
import 'package:base_project/common/presentors/status_bar/i_status_bar.dart';
import 'package:base_project/common/presentors/loader/loader_presenter.dart';
import 'package:base_project/common/presentors/dialog/dialog_presenter.dart';
import 'package:base_project/presentation/layouts/bottom_bar/bottom_bar.dart';
import 'package:base_project/common/presentors/loader/i_loader_presenter.dart';
import 'package:base_project/common/presentors/dialog/i_dialog_presenter.dart';
import 'package:base_project/common/presentors/dictionary/base_dictionary.dart';
import 'package:base_project/common/logic/device_info/i_device_info_loader.dart';
import 'package:base_project/common/presentors/bottom_bar/bottom_bar_presenter.dart';
import 'package:base_project/common/presentors/side_menu/i_side_menu_presenter.dart';
import 'package:base_project/common/presentors/bottom_bar/i_bottom_bar_presenter.dart';
import 'package:base_project/common/presentors/bottom_bar/default_bottom_bar_item.dart';
import 'package:base_project/common/presentors/side_menu/transition_side_menu_presenter.dart';

import 'package:base_project/utils/res/i18n/ar.dart';
import 'package:base_project/utils/res/i18n/en.dart';
import 'package:base_project/utils/res/app_data.dart';

@module
abstract class PresentorsModuleConfig {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();
  IDeviceInfoLoader get _deviceInfo => dependencyContainer!.get<IDeviceInfoLoader>();

  @lazySingleton
  @factoryMethod
  IDictionary<Language> get dictionary {
    return BaseDictionary<Language>(
      initialLanguageCode: AppData.locales.base,
      languages: [en, ar],
      languageBuilder: (Map<String, dynamic> json) => Language.fromJson(json),
    );
  }

  @lazySingleton
  @factoryMethod
  ILoaderPresenter get loaderPresenter => LoaderPresenter(loader: LoaderWidget());

  @lazySingleton
  @factoryMethod
  IDialogPresenter get dialogPresenter => DialogPresenter(_router);

  @singleton
  @factoryMethod
  IStatusBar get statusBar {
    return StatusBar(devicePlatform: _deviceInfo.platform)..setBrightness(Brightness.light);
  }

  @singleton
  @factoryMethod
  IBottomBarPresenter get bottomBar {
    return DefaultBottomBarPresenter(
      bottomBarBuilder: (presenter, bool isOpened) => BottomBar(
        router: _router,
        isOpened: isOpened,
        items: [
          DefaultBottomBarItem(
            svgImagePath: AppData.svg.home,
            pageRoute: HomeScreenRoute(),
          ),
          DefaultBottomBarItem(
            svgImagePath: AppData.svg.events,
            pageRoute: HomeScreenRoute(),
          ),
          DefaultBottomBarItem(
            svgImagePath: AppData.svg.transactions,
            pageRoute: HomeScreenRoute(),
          ),
          DefaultBottomBarItem(
            svgImagePath: AppData.svg.profile,
            pageRoute: HomeScreenRoute(),
          ),
        ],
        color: DefaultAppColors.background,
        enabledItemColor: DefaultAppColors.black,
        disabledItemColor: DefaultAppColors.greyTwo,
      ),
    );
  }

  @singleton
  @factoryMethod
  ISideMenuPresenter get sideMenu {
    return TransitionSideMenuPresenter(
      router: _router,
      duration: AppData.durations.milliseconds300,
      menuBuilder: (BuildContext context, Duration duration, bool state) {
        return SideMenu(
          isOpened: state,
          duration: duration,
          items: [
            MenuItem(
              title: dictionary.data.sideMenu.settings ?? '',
              function: (AppRouter router) => router.push(TermsScreenRoute()),
            ),
            MenuItem(
              title: dictionary.data.sideMenu.notifications ?? '',
              function: (AppRouter router) => router.push(TermsScreenRoute()),
            ),
            MenuItem(
              title: dictionary.data.sideMenu.logout ?? '',
              function: (AppRouter router) => router.pushAndRemoveUntil(StartScreenRoute(), predicate: (_) => false),
            ),
          ],
        );
      },
    );
  }
}
