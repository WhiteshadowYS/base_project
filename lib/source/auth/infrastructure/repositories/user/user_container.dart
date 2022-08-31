import 'package:base_project/source/auth/domain/entity/user.dart';
import 'package:base_project/source/auth/domain/repositories/user_repository.dart';

class UserContainer implements UserRepository {
  final User _user;

  UserContainer(this._user);

  @override
  User get user => _user;

  @override
  UserRepository update(User user) => UserContainer(user);
}
