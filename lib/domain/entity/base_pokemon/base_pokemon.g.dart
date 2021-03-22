// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasePokemon _$_$_BasePokemonFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_BasePokemon', json, () {
    final val = _$_BasePokemon(
      name: $checkedConvert(json, 'name', (v) => v as String?),
      url: $checkedConvert(json, 'url', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_BasePokemonToJson(_$_BasePokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
