import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/domain/auth/bloc/auth_bloc.dart';
import 'package:base_project/domain/application/bloc/app_bloc.dart';
import 'package:base_project/common/presentors/bottom_bar/i_bottom_bar_presenter.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  AppBloc get _appBloc => dependencyContainer!.get<AppBloc>();
  AuthBloc get _authBloc => dependencyContainer!.get<AuthBloc>();
  AppRouter get _router => dependencyContainer!.get<AppRouter>();
  IBottomBarPresenter get _bottomBarPresenter => dependencyContainer!.get<IBottomBarPresenter>();

  @override
  void initState() {
    super.initState();
    _appBloc.add(AppEvent.initialize());
    _router.delegate().addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    _router.delegate().removeListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>.value(value: _appBloc),
        BlocProvider<AuthBloc>.value(value: _authBloc),
      ],
      child: ScreenUtilInit(
        allowFontScaling: AppData.designSizes.fontScaling,
        designSize: Size(
          AppData.designSizes.designScreenWidth,
          AppData.designSizes.designScreenHeight,
        ),
        builder: () => MaterialApp.router(
          theme: _getTheme,
          locale: _appBloc.state.locale,
          debugShowCheckedModeBanner: false,
          routerDelegate: _router.delegate(),
          routeInformationParser: _router.defaultRouteParser(),
          supportedLocales: dictionary.supportedLocales,
          localizationsDelegates: dictionary.getLocalizationDelegates,
          builder: _bottomBarPresenter.builder,
        ),
      ),
    );
  }

  ThemeData get _getTheme {
    return ThemeData(
      splashColor: DefaultAppColors.mainPurple.withOpacity(0.4),
      highlightColor: DefaultAppColors.pinkyLight.withOpacity(0.4),
    );
  }

  void listener() {
    if (_router.current?.path.contains(bottomBar) ?? false) {
      _bottomBarPresenter.showBottomBar();
    } else {
      _bottomBarPresenter.closeBottomBar();
    }
  }
}
