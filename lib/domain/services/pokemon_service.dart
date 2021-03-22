import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';

abstract class PokemonService {
  Future<List<BasePokemon>> getPokemons();
}
