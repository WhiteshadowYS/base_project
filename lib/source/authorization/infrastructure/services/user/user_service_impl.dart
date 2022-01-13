import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';

@LazySingleton(as: UserService, env: ['dev', 'stage', 'prod'])
class UserServiceImpl implements UserService {
  @override
  Future<User> load() async {
    dataPrint('UserServiceImpl load Success!', this);
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    dataPrint('UserServiceImpl upload data: $user', this);
    dataPrint('UserServiceImpl upload Success!', this);
    return User.mock();
  }
}
