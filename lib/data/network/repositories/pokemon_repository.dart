import 'package:base_project_template/data/network/repositories/base_repository.dart';
import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PokemonRepository extends BaseRepository {
  PokemonRepository(@Named('authorized') Dio dio) : super(dio);

  Future<List<BasePokemon>> getPokemons() async {
    final response = await api.getPokemons();

    return response.results!.map((item) {
      return BasePokemon.fromJson(item);
    }).toList();
  }
}
