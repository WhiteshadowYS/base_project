// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/connection/i_connection_checker.dart' as _i10;
import '../common/device_info/i_device_info_loader.dart' as _i11;
import '../common/dialog/i_dialog_presenter.dart' as _i12;
import '../common/dictionary/i_dictionary.dart' as _i13;
import '../common/interceptors/connection_intercepter.dart' as _i4;
import '../common/interceptors/error_intercepter.dart' as _i7;
import '../common/project_info/i_project_info_loader.dart' as _i14;
import '../data/local_storage/base_storage.dart' as _i18;
import '../data/local_storage/pokemon_storage.dart' as _i19;
import '../data/local_storage/token_storage.dart' as _i6;
import '../data/repositories/pokemon_repository.dart' as _i16;
import '../data/services/pokemon_service_impl.dart' as _i21;
import '../domain/blocs/application/bloc/app_bloc.dart' as _i17;
import '../domain/services/pokemon_service.dart' as _i20;
import '../presentation/pages/home_page/bloc/home_page_bloc.dart' as _i9;
import '../presentation/pages/login_page/bloc/login_page_bloc.dart' as _i15;
import 'app_config.dart' as _i3;
import 'third_party_module.dart' as _i22;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyModule = _$ThirdPartyModule();
  gh.factory<_i3.AppConfig>(() => _i3.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i3.ProdConfig(), registerFor: {_prod});
  gh.lazySingleton<_i4.ConnectionIntercepter>(
      () => thirdPartyModule.connectionInterceptor);
  gh.lazySingleton<_i5.Dio>(
      () => thirdPartyModule.provideAuthorizedDio(
          get<_i3.AppConfig>(), get<_i6.TokenStorage>()),
      instanceName: 'authorized');
  gh.lazySingleton<_i5.Dio>(
      () => thirdPartyModule.provideUnAuthorizedDio(
          get<_i3.AppConfig>(), get<_i6.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i7.ErrorInterceptor>(
      () => thirdPartyModule.errorInterceptor);
  gh.lazySingleton<_i8.FlutterSecureStorage>(
      () => thirdPartyModule.flutterSecureStorage);
  gh.factory<_i9.HomePageBloc>(() => _i9.HomePageBloc());
  gh.lazySingleton<_i10.IConnectionChecker>(
      () => thirdPartyModule.connectionChecker);
  gh.lazySingleton<_i11.IDeviceInfoLoader>(() => thirdPartyModule.deviceInfo);
  gh.lazySingleton<_i12.IDialogPresenter>(
      () => thirdPartyModule.dialogPresenter);
  gh.lazySingleton<_i13.IDictionary<dynamic>>(
      () => thirdPartyModule.dictionary);
  gh.lazySingleton<_i14.IProjectInfoLoader>(() => thirdPartyModule.projectInfo);
  gh.factory<_i15.LoginPageBloc>(
      () => _i15.LoginPageBloc(get<_i12.IDialogPresenter>()));
  gh.lazySingleton<_i16.PokemonRepository>(() => _i16.PokemonRepository(
      get<_i5.Dio>(instanceName: 'authorized'), get<_i3.AppConfig>()));
  gh.factory<_i17.AppBloc>(
      () => _i17.AppBloc(get<_i13.IDictionary<dynamic>>()));
  gh.lazySingleton<_i18.BaseStorage<dynamic>>(
      () => _i19.PokemonStorage(get<_i8.FlutterSecureStorage>()),
      instanceName: 'PokemonStorage');
  gh.lazySingleton<_i18.BaseStorage<String>>(
      () => _i6.TokenStorage(get<_i8.FlutterSecureStorage>()),
      instanceName: 'TokenStorage');
  gh.lazySingleton<_i20.PokemonService>(() => _i21.PokemonServiceImpl(
      get<_i11.IDeviceInfoLoader>(),
      get<_i16.PokemonRepository>(),
      get<_i18.BaseStorage<dynamic>>(instanceName: 'PokemonStorage')));
  return get;
}

class _$ThirdPartyModule extends _i22.ThirdPartyModule {}
