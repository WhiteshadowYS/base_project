import 'package:base_project_template/dictionary/flutter_dictionary.dart';
import 'package:base_project_template/presentation/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final lng = FlutterDictionary.instance.language;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MainLayout(
        key: Key('[HomePage]'),
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        _buildOrdersList(),
      ],
    );
  }

  Widget _buildOrdersList() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        itemCount: 0,
        itemBuilder: (BuildContext context, int index) {
          return Container();
        },
      ),
    );
  }
}
