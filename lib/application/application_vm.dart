import 'package:base_project/config/ui_manger.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApplicationVM extends ChangeNotifier {
  void initApp() async {
    await Future.delayed(Duration(seconds: 2));
    await UIManager.router.replace(LoginScreenRoute());
  }
}
