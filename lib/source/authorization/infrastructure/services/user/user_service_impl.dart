import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';
import 'package:base_project/utils/printers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserService, env: ['dev', 'stage', 'prod'])
class UserServiceImpl implements UserService {
  @override
  Future<User> load() async {
    infoPrint('UserServiceImpl load Success!', this);
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    infoPrint('UserServiceImpl upload Success!', this);
    dataPrint(user, this);
    return User.mock();
  }
}
