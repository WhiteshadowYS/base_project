import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserService, env: ['dev', 'stage', 'prod'])
class UserServiceImpl implements UserService {
  @override
  Future<User> load() async {
    UIManager.logger.i('UserServiceImpl load Success!', this);
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    UIManager.logger.i('UserServiceImpl upload data: $user', this);
    UIManager.logger.i('UserServiceImpl upload Success!', this);
    return User.mock();
  }
}
