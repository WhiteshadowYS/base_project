import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen() : super(key: const Key('ProfileScreenKey'));

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                  title: Text('Profile Screen'),
                );
              },
            ),
          ),
          InkWell(
            onTap: () => context.pushRoute(ProfileEditScreenRoute()),
            child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}
