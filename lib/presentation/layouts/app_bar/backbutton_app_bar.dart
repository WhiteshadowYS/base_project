import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/res/app_data.dart';

class BackButtonAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? callback;

  BackButtonAppBar({required this.title, this.callback});

  AppRouter get _router => dependencyContainer!.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: AppData.textStyles.headline(),
            ),
          ),
          Positioned.directional(
            textDirection: TextDirection.ltr,
            start: 0.0,
            top: 0.0,
            child: InkWell(
              borderRadius: BorderRadius.circular(50.0),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: callback ?? _router.pop,
              child: SizedBox(
                height: 50.0,
                width: 50.0,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 28.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
