import 'package:base_project/source/authorization/domain/entities/user.dart';

abstract class UserService {
  Future<User> load();
  Future<User> upload(User user);
}
