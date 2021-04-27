import 'package:freezed_annotation/freezed_annotation.dart';

part 'links.freezed.dart';
part 'links.g.dart';

@freezed
class Links with _$Links {
  const Links._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Links({
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
