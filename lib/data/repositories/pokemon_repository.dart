import 'package:lalee_mobile/data/local_storage/base_storage.dart';
import 'package:lalee_mobile/data/local_storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:lalee_mobile/config/app_config.dart';
import 'package:lalee_mobile/data/repositories/base_repository.dart';
import 'package:lalee_mobile/domain/entity/base_pokemon/base_pokemon.dart';

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
