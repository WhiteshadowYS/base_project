import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_sign_in_dto.freezed.dart';
part 'email_sign_in_dto.g.dart';

@freezed
class EmailSignInDto with _$EmailSignInDto {
  const EmailSignInDto._();
  @JsonSerializable()
  const factory EmailSignInDto({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _EmailSignInDto;

  factory EmailSignInDto.mock() {
    return EmailSignInDto(
      email: 'tester@gmail.com',
      password: '123456Test',
    );
  }

  factory EmailSignInDto.fromJson(Map<String, dynamic> json) => _$EmailSignInDtoFromJson(json);
}
