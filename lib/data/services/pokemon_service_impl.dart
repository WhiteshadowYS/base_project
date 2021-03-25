import 'package:lalee_mobile/common/device_info/device_platform.dart';
import 'package:lalee_mobile/common/device_info/i_device_info_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:lalee_mobile/data/local_storage/base_storage.dart';
import 'package:lalee_mobile/domain/services/pokemon_service.dart';
import 'package:lalee_mobile/data/local_storage/pokemon_storage.dart';
import 'package:lalee_mobile/data/repositories/pokemon_repository.dart';
import 'package:lalee_mobile/domain/entity/base_pokemon/base_pokemon.dart';

import 'package:logging/logging.dart';

@LazySingleton(as: PokemonService)
class PokemonServiceImpl implements PokemonService {
  final IDeviceInfoLoader _deviceInfo;
  final BaseStorage _storage;
  final PokemonRepository _repository;

  PokemonServiceImpl(
    this._deviceInfo,
    this._repository,
    @Named.from(PokemonStorage) this._storage,
  );

  Logger get _logger => Logger('[$runtimeType]');

  @override
  Future<List<BasePokemon>> getPokemons() async {
    List<BasePokemon> pokemons = await _repository.getPokemons();

    if (_deviceInfo.platform == DevicePlatform.Web) {
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
