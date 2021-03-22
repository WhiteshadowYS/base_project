import 'package:injectable/injectable.dart';
import 'package:base_project_template/data/local_storage/base_storage.dart';
import 'package:base_project_template/domain/services/pokemon_service.dart';
import 'package:base_project_template/data/local_storage/pokemon_storage.dart';
import 'package:base_project_template/data/repositories/pokemon_repository.dart';
import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';
import 'package:base_project_template/data/managers/device_info_manager/device_info_manager.dart';

import 'package:logging/logging.dart';

@LazySingleton(as: PokemonService)
class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl(
    this._repository,
    @Named.from(PokemonStorage) this._storage,
  );

  final BaseStorage _storage;
  final PokemonRepository _repository;

  Logger get _logger => Logger('[$runtimeType]');

  @override
  Future<List<BasePokemon>> getPokemons() async {
    List<BasePokemon> pokemons = await _repository.getPokemons();

    if (DeviceInfoManager.instance.devicePlatform == DevicePlatform.Web) {
      return pokemons;
    }

    if (pokemons.isNotEmpty) {
      _logger.info('<getPokemons> => Loaded from server!');
      await _storage.save(pokemons);
      return pokemons;
    }

    pokemons = await _storage.take() ?? [];

    _logger.info('<getPokemons> => Loaded from storage!');
    return pokemons;
  }
}
