import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/user_service.dart';

@LazySingleton(as: UserService, env: ['test'])
class UserServiceMock implements UserService {
  @override
  Future<User> load() async {
    dataPrint('UserServiceMock load Success!', this);
    return User.mock();
  }

  @override
  Future<User> upload(User user) async {
    dataPrint('UserServiceMock upload data: $user', this);
    dataPrint('UserServiceMock upload Success!', this);
    return User.mock();
  }
}
