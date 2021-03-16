import 'package:base_project_template/config/bloc/app_bloc.dart';
import 'package:base_project_template/config/bloc/app_state.dart';
import 'package:base_project_template/dictionary/flutter_delegate.dart';
import 'package:base_project_template/domain/managers/route_manager/route_builder.dart';
import 'package:base_project_template/domain/theme/custom_theme.dart';
import 'package:base_project_template/presentation/shared/base_state.dart';
import 'package:base_project_template/presentation/widgets/splash_screen.dart';
import 'package:base_project_template/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

class Application extends StatefulWidget {
  Application();

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends BaseState<AppState, AppBloc, Application> {
  @override
  Widget buildWidget(BuildContext context) {
    return ScreenUtilInit(
      allowFontScaling: AppData.designSizes.fontScaling,
      designSize: Size(
        AppData.designSizes.designScreenWidth,
        AppData.designSizes.designScreenHeight,
      ),
      builder: () {
        return stateObserver(
          context,
          (AppState state) {
            return MaterialApp(
              locale: state.locale,
              theme: ThemeData(
                splashColor: CustomTheme.colors?.primaryColor.withOpacity(0.3),
                highlightColor: CustomTheme.colors?.primaryColor.withOpacity(0.2),
              ),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouteBuilder.onGenerateRoute,
              supportedLocales: FlutterDictionaryDelegate.getSupportedLocales,
              localizationsDelegates: FlutterDictionaryDelegate.getLocalizationDelegates,
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
