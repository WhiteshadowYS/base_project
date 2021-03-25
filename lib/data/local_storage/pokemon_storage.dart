import 'dart:convert';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:base_project/data/local_storage/base_storage.dart';
import 'package:base_project/domain/entity/base_pokemon/base_pokemon.dart';

@named
@LazySingleton(as: BaseStorage)
class PokemonStorage implements BaseStorage {
  final FlutterSecureStorage _storage;

  const PokemonStorage(this._storage);

  Logger get logger => Logger('[$runtimeType]');

  @override
  String get key => '/pokemons';

  @override
  Future<void> save(pokemons) async {
    final json = jsonEncode(pokemons.map((item) => item.toJson()).toList());

    await _storage.write(key: key, value: json);
  }

  @override
  Future take() async {
    try {
      final String? json = await _storage.read(key: key);

      final List<BasePokemon> pokemons = jsonDecode(json ?? '').map<BasePokemon>((e) => BasePokemon.fromJson(e)).toList();

      return pokemons;
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return null;
    }
  }
}
