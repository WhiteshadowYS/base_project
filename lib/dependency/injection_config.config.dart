// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/bloc/app_bloc.dart' as _i3;
import '../config/app_config.dart' as _i4;
import '../data/local/langauge_storage.dart' as _i7;
import '../data/local/pokemon_storage.dart' as _i9;
import '../data/local/token_storage.dart' as _i10;
import '../data/network/repositories/pokemon_repository.dart' as _i12;
import '../data/network/services/pokemon_service_impl.dart' as _i14;
import '../domain/services/pokemon_service.dart' as _i13;
import '../presentation/pages/home_page/bloc/home_page_bloc.dart' as _i6;
import '../presentation/pages/login_page/bloc/login_page_bloc.dart' as _i8;
import 'third_party_module.dart' as _i15;

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
  gh.factory<_i6.HomePageBloc>(() => _i6.HomePageBloc());
  gh.lazySingleton<_i7.LanguageStorage>(
      () => _i7.LanguageStorage(get<_i5.FlutterSecureStorage>()));
  gh.factory<_i8.LoginPageBloc>(() => _i8.LoginPageBloc());
  gh.lazySingleton<_i9.PokemonStorage>(
      () => _i9.PokemonStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i10.TokenStorage>(
      () => _i10.TokenStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i11.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(
          get<_i4.AppConfig>(), get<_i10.TokenStorage>()),
      instanceName: 'authorized');
  gh.lazySingleton<_i11.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(
          get<_i4.AppConfig>(), get<_i10.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i12.PokemonRepository>(
      () => _i12.PokemonRepository(get<_i11.Dio>(instanceName: 'authorized')));
  gh.lazySingleton<_i13.PokemonService>(() => _i14.PokemonServiceImpl(
      get<_i12.PokemonRepository>(), get<_i9.PokemonStorage>()));
  return get;
}

class _$ThirdPartyModule extends _i15.ThirdPartyModule {}
