import 'package:base_project/source/authorization/domain/entities/user_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  @JsonSerializable()
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'settings') UserSettings? settings,
  }) = _User;

  factory User.mock() {
    return User(
      id: 0,
      name: 'Yura',
      email: 'tester@gmail.com',
      settings: UserSettings.mock(),
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
