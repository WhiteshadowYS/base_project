import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserService, env: ['test'])
class UserServiceMock implements UserService {
  @override
  Future<User> load() async {
    UIManager.logger.i('UserServiceMock load Success!', this);
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    UIManager.logger.i('UserServiceMock upload data: $user', this);
    UIManager.logger.i('UserServiceMock upload Success!', this);
    return User.mock();
  }
}
