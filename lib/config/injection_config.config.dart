// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dictionary/models/supported_language.dart' as _i13;
import '../data/interceptors/connection_intercepter.dart' as _i20;
import '../data/interceptors/error_intercepter.dart' as _i19;
import '../data/local_storage/base_storage.dart' as _i11;
import '../data/local_storage/langauge_storage.dart' as _i14;
import '../data/local_storage/pokemon_storage.dart' as _i12;
import '../data/local_storage/token_storage.dart' as _i6;
import '../data/repositories/pokemon_repository.dart' as _i10;
import '../data/services/language_service_impl.dart' as _i18;
import '../data/services/pokemon_service_impl.dart' as _i16;
import '../domain/blocs/application/bloc/app_bloc.dart' as _i3;
import '../domain/services/language_service.dart' as _i17;
import '../domain/services/pokemon_service.dart' as _i15;
import '../presentation/pages/home_page/bloc/home_page_bloc.dart' as _i8;
import '../presentation/pages/login_page/bloc/login_page_bloc.dart' as _i9;
import 'app_config.dart' as _i4;
import 'third_party_module.dart' as _i21;

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
  gh.lazySingleton<_i5.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(
          get<_i4.AppConfig>(), get<_i6.TokenStorage>()),
      instanceName: 'authorized');
  gh.lazySingleton<_i5.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(
          get<_i4.AppConfig>(), get<_i6.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i7.FlutterSecureStorage>(
      () => thirdPartyModule.flutterSecureStorage);
  gh.factory<_i8.HomePageBloc>(() => _i8.HomePageBloc());
  gh.factory<_i9.LoginPageBloc>(() => _i9.LoginPageBloc());
  gh.lazySingleton<_i10.PokemonRepository>(() => _i10.PokemonRepository(
      get<_i5.Dio>(instanceName: 'authorized'), get<_i4.AppConfig>()));
  gh.lazySingleton<_i11.BaseStorage<dynamic>>(
      () => _i12.PokemonStorage(get<_i7.FlutterSecureStorage>()),
      instanceName: 'PokemonStorage');
  gh.lazySingleton<_i11.BaseStorage<String>>(
      () => _i6.TokenStorage(get<_i7.FlutterSecureStorage>()),
      instanceName: 'TokenStorage');
  gh.lazySingleton<_i11.BaseStorage<_i13.SupportedLanguage>>(
      () => _i14.LanguageStorage(get<_i7.FlutterSecureStorage>()),
      instanceName: 'LanguageStorage');
  gh.lazySingleton<_i15.PokemonService>(() => _i16.PokemonServiceImpl(
      get<_i10.PokemonRepository>(),
      get<_i11.BaseStorage<dynamic>>(instanceName: 'PokemonStorage')));
  gh.lazySingleton<_i17.LanguageService>(() => _i18.LanguageServiceImpl(
      get<_i11.BaseStorage<dynamic>>(instanceName: 'language')));
  gh.singleton<_i5.Interceptor>(_i19.ErrorInterceptor(),
      instanceName: 'ErrorInterceptor');
  gh.singleton<_i5.Interceptor>(_i20.ConnectionIntercepter(),
      instanceName: 'ConnectionIntercepter');
  return get;
}

class _$ThirdPartyModule extends _i21.ThirdPartyModule {}
