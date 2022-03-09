import 'package:flutter/material.dart';
import 'package:base_project/config/app_router.dart';
import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';

class ProfileViewScreen extends StatefulWidget {
  const ProfileViewScreen() : super(key: const Key('ProfileViewScreenKey'));

  @override
  _ProfileViewScreenState createState() => _ProfileViewScreenState();
}

class _ProfileViewScreenState extends State<ProfileViewScreen> {
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
