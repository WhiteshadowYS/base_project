import 'package:base_project/data/local_storage/base_storage.dart';
import 'package:base_project/data/local_storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/data/repositories/base_repository.dart';
import 'package:base_project/domain/entity/base_pokemon/base_pokemon.dart';

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
