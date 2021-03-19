import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BasePresponse with _$BasePresponse {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory BasePresponse({
    @JsonKey(name: 'count') num? count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previus') String? previus,
    @JsonKey(name: 'results') List? results,
  }) = _BasePresponse;

  factory BasePresponse.fromJson(Map<String, dynamic> json) => _$BasePresponseFromJson(json);
}
