import 'package:base_project/src/authorization/domain/authorization_service.dart';
import 'package:base_project/src/authorization/domain/models/login_data.dart';
import 'package:base_project/src/authorization/domain/models/registration_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/src/authorization/domain/entities/user_settings.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  @JsonSerializable()
  const factory User({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'settings') UserSettings? settings,
  }) = _User;

  Future<bool> logout(AuthService service) async {
    return await service.logout();
  }

  Future<User?> login(AuthService service, LoginData data) async {
    return await service.login(data);
  }

  Future<User?> register(AuthService service, RegistrationData data) async {
    return await service.registration(data);
  }

  factory User.mock() => User(settings: UserSettings.mock());

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
