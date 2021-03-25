import 'package:lalee_mobile/domain/entity/base_pokemon/base_pokemon.dart';

abstract class PokemonService {
  Future<List<BasePokemon>> getPokemons();
}
