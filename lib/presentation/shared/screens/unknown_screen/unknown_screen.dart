import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Unknown Screen',
          style: AppData.textStyles.title1(),
        ),
      ),
    );
  }
}
