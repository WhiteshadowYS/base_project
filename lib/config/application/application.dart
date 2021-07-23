import 'package:base_project/config/app_router.dart';
import 'package:base_project/config/application/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>.value(value: getIt<AppBloc>()),
      ],
      child: ScreenUtilInit(
        allowFontScaling: true,
        designSize: Size(
          AppData.designSizes.designScreenWidth,
          AppData.designSizes.designScreenHeight,
        ),
        builder: () => MaterialApp.router(
          theme: theme.theme,
          locale: Locale('en'),
          debugShowCheckedModeBanner: false,
          routerDelegate: router.delegate(),
          routeInformationParser: router.defaultRouteParser(),
          supportedLocales: [Locale('en')],
          // supportedLocales: dictionary.supportedLocales,
          // localizationsDelegates: dictionary.getLocalizationDelegates,
        ),
      ),
    );
  }
}
