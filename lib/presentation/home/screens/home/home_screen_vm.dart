import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/presentation/home/dialogs/home_dialog.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenVM extends ChangeNotifier with BaseViewModel {
  Type get loaderType => String;

  VoidCallback get homeDialog => () => UIManager.dialog.show(HomeDialog());
}
