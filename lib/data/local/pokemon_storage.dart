import 'dart:convert';
import 'package:logging/logging.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:base_project_template/domain/entity/base_pokemon/base_pokemon.dart';

@lazySingleton
class PokemonStorage {
  final FlutterSecureStorage _storage;

  const PokemonStorage(this._storage);

  Logger get logger => Logger('[$runtimeType]');

  static const String _tokenKey = '/pokemons';

  void savePokemons(List<BasePokemon> pokemons) {
    final json = jsonEncode(pokemons.map((item) => item.toJson()).toList());

    _storage.write(key: _tokenKey, value: json);
  }

  Future<List<BasePokemon>?> getPokemons() async {
    try {
      final String? json = await _storage.read(key: _tokenKey);

      final List<BasePokemon> pokemons = jsonDecode(json ?? '').map<BasePokemon>((e) => BasePokemon.fromJson(e)).toList();

      return pokemons;
    } catch (e) {
      logger.warning('<getToken> => error: $e');
      return null;
    }
  }
}
