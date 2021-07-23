import 'package:injectable/injectable.dart';
import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';

@LazySingleton(as: UserService)
class UserServiceImpl implements UserService {
  @override
  Future<User> load() async {
    print('UserServiceImpl load Success!');
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    print('UserServiceImpl upload data: $user');
    print('UserServiceImpl upload Success!');
    return User.mock();
  }
}
