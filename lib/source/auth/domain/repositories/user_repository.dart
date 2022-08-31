import 'package:base_project/source/auth/domain/entity/user.dart';

abstract class UserRepository {
  User get user;
  UserRepository update(User user);
}
