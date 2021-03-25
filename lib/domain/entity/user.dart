import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory User({
    @JsonKey(name: 'created_at') DateTime? creationDate,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'phone_number') String? phone,
    @JsonKey(name: 'whatsapp_number') String? whatappNumber,
    @JsonKey(name: 'instagram_account') String? instagramAccount,
    @JsonKey(name: 'avatar_path') String? avater,
    @JsonKey(name: 'profile_type') ProfileType? profileType,
    @JsonKey(name: 'is_staff') bool? isStaff,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
    @JsonKey(name: 'verification_status') VerificationStatus? verificationStatus,
    @JsonKey(name: 'is_blocked') bool? isBlocked,
    @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum ProfileType {
  @JsonValue('admin')
  Admin,
  @JsonValue('freelancer')
  Freelancer,
}

enum VerificationStatus {
  @JsonValue('verified')
  Verified,
  @JsonValue('undefined')
  Undefined,
}
