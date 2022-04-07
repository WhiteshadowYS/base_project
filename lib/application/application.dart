import 'package:base_project/application/bloc/app_bloc.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/resources/resources.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocalizedApplication extends StatelessWidget {
  const LocalizedApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: 'assets/translations',
      useOnlyLangCode: true,
      startLocale: Resources.locales.initialLocale,
      fallbackLocale: Resources.locales.initialLocale,
      supportedLocales: Resources.locales.supportedLocales,
      child: Application(),
    );
  }
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    getIt<AppBloc>().add(AppEvent.initApp());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Resources.size.size,
      builder: () => MaterialApp.router(
        theme: UIManager.theme.theme,
        debugShowCheckedModeBanner: false,
        routerDelegate: UIManager.router.delegate(),
        routeInformationParser: UIManager.router.defaultRouteParser(),
      ),
    );
  }
}
