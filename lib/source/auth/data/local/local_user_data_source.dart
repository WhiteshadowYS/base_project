import 'package:base_project/source/auth/entity/user.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalUserDataSource {
  Future<User> get() async {
    /// Get user from Storage
    return User('email', 'name');
  }

  Future<void> save(User user) async {
    /// Save User to Storage
  }

  Future<void> delete() async {
    /// Delete user from Storage
  }
}
