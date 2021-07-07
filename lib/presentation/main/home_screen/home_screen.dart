import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
