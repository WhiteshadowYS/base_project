import 'package:base_project_template/config/injection_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:base_project_template/utils/res/app_data.dart';
import 'package:base_project_template/presentation/shared/base_state.dart';
import 'package:base_project_template/domain/blocs/application/app_router.dart';
import 'package:base_project_template/domain/blocs/application/bloc/app_bloc.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends BaseState<AppState, AppBloc, Application> {
  @override
  void onBlocCreated(BuildContext context, AppBloc bloc) {
    bloc.add(AppEvent.initialize());
    super.onBlocCreated(context, bloc);
  }

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
            Locale? locale;
            state.maybeMap(
              initialized: (state) => locale = state.locale,
              orElse: () {},
            );

            return MaterialApp.router(
              locale: locale,
              routerDelegate: router.delegate(),
              routeInformationParser: router.defaultRouteParser(),
              theme: ThemeData(),
              debugShowCheckedModeBanner: false,
              supportedLocales: dictionary.supportedLocales,
              localizationsDelegates: dictionary.getLocalizationDelegates,
            );
          },
        );
      },
    );
  }
}
