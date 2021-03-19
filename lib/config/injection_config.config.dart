// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i13;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dictionary/models/supported_language.dart' as _i11;
import '../data/local_storage/base_storage.dart' as _i9;
import '../data/local_storage/langauge_storage.dart' as _i12;
import '../data/local_storage/pokemon_storage.dart' as _i10;
import '../data/local_storage/token_storage.dart' as _i8;
import '../data/repositories/pokemon_repository.dart' as _i14;
import '../data/services/pokemon_service_impl.dart' as _i16;
import '../domain/blocs/application/bloc/app_bloc.dart' as _i3;
import '../domain/services/pokemon_service.dart' as _i15;
import '../presentation/pages/home_page/bloc/home_page_bloc.dart' as _i6;
import '../presentation/pages/login_page/bloc/login_page_bloc.dart' as _i7;
import 'app_config.dart' as _i4;
import 'third_party_module.dart' as _i17;

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
  gh.factory<_i7.LoginPageBloc>(() => _i7.LoginPageBloc());
  gh.lazySingleton<_i8.TokenStorage>(
      () => _i8.TokenStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.BaseStorage<dynamic>>(
      () => _i10.PokemonStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.BaseStorage<_i11.SupportedLanguage>>(
      () => _i12.LanguageStorage(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i13.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(
          get<_i4.AppConfig>(), get<_i8.TokenStorage>()),
      instanceName: 'authorized');
  gh.lazySingleton<_i13.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(
          get<_i4.AppConfig>(), get<_i8.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i14.PokemonRepository>(() => _i14.PokemonRepository(
      get<_i13.Dio>(instanceName: 'authorized'), get<_i4.AppConfig>()));
  gh.lazySingleton<_i15.PokemonService>(() => _i16.PokemonServiceImpl(
      get<_i14.PokemonRepository>(), get<_i10.PokemonStorage>()));
  return get;
}

class _$ThirdPartyModule extends _i17.ThirdPartyModule {}
