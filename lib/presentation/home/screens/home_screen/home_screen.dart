import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/utils/base_elements/base_screen.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:base_project/presentation/home/screens/home_screen/home_screen_vm.dart';
import 'package:base_project/presentation/home/screens/home_screen/home_screen_presentor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen() : super(key: const Key('HomeScreenKey'));

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreenVM, HomeScreenPresenter, HomeScreen> {
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
            onTap: viewModel.homeDialog,
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
