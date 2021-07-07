import 'package:base_project/src/authorization/domain/authorization_service.dart';
import 'package:base_project/src/authorization/domain/models/registration_data.dart';
import 'package:base_project/src/authorization/domain/models/login_data.dart';
import 'package:base_project/src/authorization/domain/entities/user.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class AuthServiceimpl implements AuthService {
  @override
  Future<bool> logout() async => true;

  @override
  Future<User> login(LoginData data) async => User.mock();

  @override
  Future<User> registration(RegistrationData data) async => User.mock();
}
