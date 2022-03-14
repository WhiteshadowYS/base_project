import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'dart:async';

import 'package:base_project/source/authorization/domain/repositories/users_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UsersRepository, env: ['test', 'dev', 'stage', 'prod'])
class DataUsersRepository implements UsersRepository {
  final List<User> _users = [];

  @override
  FutureOr<void> add(User user) async => _users.add(user);

  @override
  FutureOr<void> addAll(List<User> users) async => _users.addAll(users);

  @override
  FutureOr<void> remove(User user) async => _users.remove(user);

  @override
  FutureOr<void> removeById(int id) async {
    final User? user = await findById(id);

    if (user != null) {
      _users.remove(user);
    }
  }

  @override
  FutureOr<User?> findById(int id) async {
    final int index = _users.indexWhere((user) => user.id == id);

    return index != -1 ? _users[index] : null;
  }

  @override
  List<User> get users => _users;
}
