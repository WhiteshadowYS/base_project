import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/home/dialogs/home_dialog.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';

@lazySingleton
class HomeScreenVM with BaseViewModel {
  HomeScreenVM();

  VoidCallback get homeDialog => () => dialog.show(HomeDialog());
}
