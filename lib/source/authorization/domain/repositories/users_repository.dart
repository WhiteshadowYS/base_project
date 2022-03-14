import 'dart:async';

import 'package:base_project/source/authorization/domain/entity/user.dart';

abstract class UsersRepository {
  List<User> get users;

  FutureOr<void> add(User user);
  FutureOr<void> remove(User user);
  FutureOr<void> addAll(List<User> users);

  FutureOr<void> removeById(int id);
  FutureOr<User?> findById(int id);
}
