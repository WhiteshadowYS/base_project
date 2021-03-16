import 'package:base_project_template/data/local/pokemon_storage.dart';
import 'package:base_project_template/data/network/repositories/pokemon_repository.dart';
import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';
import 'package:base_project_template/domain/managers/device_info_manager/device_info_manager.dart';
import 'package:base_project_template/domain/services/pokemon_service.dart';
import 'package:injectable/injectable.dart';

import 'package:logging/logging.dart';

@LazySingleton(as: PokemonService)
class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl(this._repository, this._storage);

  final PokemonStorage _storage;
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
      _storage.savePokemons(pokemons);
      return pokemons;
    }

    pokemons = await _storage.getPokemons() ?? [];

    _logger.info('<getPokemons> => Loaded from storage!');
    return pokemons;
  }
}
