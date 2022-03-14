import 'package:base_project/presentation/shared/layouts/main_layout/main_layout.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen() : super(key: const Key('ProfileEditScreenKey'));

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Profile Edit Screen'),
            );
          },
        ),
      ),
    );
  }
}
