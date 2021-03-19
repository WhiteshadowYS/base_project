import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project_template/config/app_config.dart';
import 'package:base_project_template/data/repositories/base_repository.dart';
import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';

@lazySingleton
class PokemonRepository extends BaseRepository {
  PokemonRepository(
    @Named('authorized') Dio dio,
    AppConfig config,
  ) : super(dio, config);

  Future<List<BasePokemon>> getPokemons() async {
    final response = await api.getPokemons();

    return response.results!.map((item) {
      return BasePokemon.fromJson(item);
    }).toList();
  }
}
