import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_data.freezed.dart';
part 'registration_data.g.dart';

@freezed
class RegistrationData with _$RegistrationData {
  const RegistrationData._();
  @JsonSerializable()
  const factory RegistrationData({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'second_name') required String secondName,
  }) = _RegistrationData;

  factory RegistrationData.mock() => RegistrationData(
        email: 'test@gmail.com',
        password: '123456Test',
        firstName: 'FirstName',
        secondName: 'SecondName',
      );

  factory RegistrationData.fromJson(Map<String, dynamic> json) => _$RegistrationDataFromJson(json);
}
