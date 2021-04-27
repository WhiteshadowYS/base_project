import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Token({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'expiry') DateTime? expiry,
  }) = _Token;

  factory Token.mock() => Token(token: 'token', expiry: DateTime.now());

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
