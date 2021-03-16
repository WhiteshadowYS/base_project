// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../config/app_config.dart' as _i4;
import '../config/bloc/app_bloc.dart' as _i3;
import '../data/local/langauge_storage.dart' as _i6;
import '../data/local/pokemon_storage.dart' as _i7;
import '../data/local/token_storage.dart' as _i8;
import '../data/network/repositories/pokemon_repository.dart' as _i10;
import '../data/network/services/pokemon_service_impl.dart' as _i12;
import '../domain/services/pokemon_service.dart' as _i11;
import 'third_party_module.dart' as _i13;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyModule = _$ThirdPartyModule();
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.factory<_i4.AppConfig>(() => _i4.DevConfig(), registerFor: {_dev});
  gh.factory<_i4.AppConfig>(() => _i4.ProdConfig(), registerFor: {_prod});
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => thirdPartyModule.flutterSecureStorage);
  gh.lazySingleton<_i6.LanguageStorage>(
      () => _i6.LanguageStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i7.PokemonStorage>(
      () => _i7.PokemonStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i8.TokenStorage>(
      () => _i8.TokenStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(
          get<_i4.AppConfig>(), get<_i8.TokenStorage>()),
      instanceName: 'authorized');
  gh.lazySingleton<_i9.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(
          get<_i4.AppConfig>(), get<_i8.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i10.PokemonRepository>(
      () => _i10.PokemonRepository(get<_i9.Dio>(instanceName: 'authorized')));
  gh.lazySingleton<_i11.PokemonService>(() => _i12.PokemonServiceImpl(
      get<_i10.PokemonRepository>(), get<_i7.PokemonStorage>()));
  return get;
}

class _$ThirdPartyModule extends _i13.ThirdPartyModule {}
