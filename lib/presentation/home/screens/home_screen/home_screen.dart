import 'package:base_project/common/ui/dialog/i_dialog.dart';
import 'package:base_project/presentation/home/dialogs/home_dialog.dart';
import 'package:base_project/presentation/profile/screens/profile_edit_screen/profile_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen() : super(key: const Key('HomeScreenKey'));

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Home Screen'),
                );
              },
            ),
          ),
          InkWell(
            onTap: () => context.pushRoute(SearchScreenRoute()),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: Center(child: Text('Search')),
            ),
          ),
          const SizedBox(height: 20.0),
          InkWell(
            onTap: () => dialog.show(HomeDialog()),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: Center(child: Text('Dialog')),
            ),
          ),
        ],
      ),
    );
  }
}
