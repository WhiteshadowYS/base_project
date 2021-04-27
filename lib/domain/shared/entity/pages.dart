import 'package:freezed_annotation/freezed_annotation.dart';

part 'pages.freezed.dart';
part 'pages.g.dart';

@freezed
class Pages with _$Pages {
  const Pages._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory Pages({
    @JsonKey(name: 'next') int? next,
    @JsonKey(name: 'current') int? current,
    @JsonKey(name: 'previous') int? previous,
  }) = _Pages;

  factory Pages.fromJson(Map<String, dynamic> json) => _$PagesFromJson(json);
}
