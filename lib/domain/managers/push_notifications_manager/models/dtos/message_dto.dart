import 'package:json_annotation/json_annotation.dart';

part 'message_dto.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  checked: true,
  explicitToJson: true,
)
class MessageDto {
  String? id;
  String? title;
  String? body;
  String? image;
  String? type;

  MessageDto({
    this.id,
    this.title,
    this.body,
    this.image,
    this.type,
  });

  factory MessageDto.fromJson(json) => _$MessageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
