import 'package:base_project/source/auth/entity/user.dart';

class UserContainer {
  final User? _user;

  const UserContainer(this._user);

  User? get user => _user;

  UserContainer copyWith({User? user}) {
    return UserContainer(user ?? _user);
  }
}
