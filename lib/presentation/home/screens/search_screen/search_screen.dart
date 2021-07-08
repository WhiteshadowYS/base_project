import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen() : super(key: const Key('SearchScreenKey'));

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Search Screen'),
            );
          },
        ),
      ),
    );
  }
}
