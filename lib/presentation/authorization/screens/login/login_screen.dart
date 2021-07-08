import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      background: theme.accent,
      child: Center(
        child: InkWell(
          onTap: () => router.replace(BaseScreenRoute()),
          child: Container(
            color: theme.primary,
            height: 100.0,
            width: 100.0,
          ),
        ),
      ),
    );
  }
}
