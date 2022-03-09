import 'package:flutter/material.dart';
import 'package:base_project/resources/resources.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: Resources.textStyles.title1(),
        ),
      ),
    );
  }
}
