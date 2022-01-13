import 'package:base_project/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/config/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base_project/config/application/bloc/app_bloc.dart';

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
        theme: theme.theme,
        debugShowCheckedModeBanner: false,
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
