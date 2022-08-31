import 'package:base_project/application/application_vm.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    getIt<ApplicationVM>().initApp();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: getIt<ApplicationVM>()),
        Provider.value(value: getIt<AuthService>()),
      ],
      builder: (ctx, _) {
        return MaterialApp.router(
          theme: UIManager.theme.theme,
          debugShowCheckedModeBanner: false,
          routerDelegate: UIManager.router.delegate(),
          routeInformationParser: UIManager.router.defaultRouteParser(),
        );
      },
    );
  }
}
