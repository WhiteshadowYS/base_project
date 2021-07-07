import 'package:base_project/src/authorization/domain/models/login_data.dart';
import 'package:base_project/src/authorization/domain/models/registration_data.dart';

import 'entities/user.dart';

abstract class AuthService {
  Future<User> login(LoginData data);
  Future<User> registration(RegistrationData data);
  Future<bool> logout();
}
