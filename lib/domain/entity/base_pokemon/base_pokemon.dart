import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_pokemon.g.dart';
part 'base_pokemon.freezed.dart';

@freezed
class BasePokemon with _$BasePokemon {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory BasePokemon({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
  }) = _BasePokemon;

  factory BasePokemon.fromJson(Map<String, dynamic> json) => _$BasePokemonFromJson(json);
}
