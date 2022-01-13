import 'package:base_project/resources/resources.dart';
import 'package:flutter/material.dart';

class UnknownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Unknown Screen',
          style: Resources.textStyles.title1(),
        ),
      ),
    );
  }
}
