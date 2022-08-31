// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/bloc/app_bloc.dart' as _i3;
import '../common/network/interceptors/authorization_interceptor.dart' as _i6;
import '../common/network/interceptors/error_interceptor.dart' as _i9;
import '../common/network/interceptors/language_interceptor.dart' as _i14;
import '../common/network/interceptors/request_interceptor.dart' as _i19;
import '../common/platform/storage/i_storage.dart' as _i12;
import '../common/ui/dialog/i_dialog_service.dart' as _i11;
import '../common/ui/loader/loader.dart' as _i15;
import '../common/ui/theme/i_theme_config.dart' as _i13;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i18;
import '../presentation/home/screens/home/home_screen_vm.dart' as _i10;
import '../source/auth/application/bloc/auth_bloc.dart' as _i5;
import '../source/auth/dependency_injection.dart' as _i22;
import '../source/auth/domain/repositories/auth_repository.dart' as _i23;
import '../source/auth/infrastructure/api/auth_api.dart' as _i20;
import '../source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source.dart'
    as _i16;
import '../source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source_impl.dart'
    as _i24;
import '../source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source_mock.dart'
    as _i25;
import '../source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source.dart'
    as _i17;
import '../source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source_impl.dart'
    as _i26;
import '../source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source_mock.dart'
    as _i27;
import 'app_router.gr.dart' as _i4;
import 'configs/app_config.dart' as _i8;
import 'modules/network_modules.dart' as _i28;
import 'modules/platform_modules.dart' as _i21;
import 'modules/ui_modules.dart' as _i29;

const String _develop = 'develop';
const String _staging = 'staging';
const String _production = 'production';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final platformModules = _$PlatformModules();
  final authModule = _$AuthModule(get);
  final networkModules = _$NetworkModules();
  final uIModules = _$UIModules();
  gh.lazySingleton<_i3.AppBlocServices>(() => _i3.AppBlocServices());
  gh.singleton<_i4.AppRouter>(platformModules.router);
  gh.lazySingleton<_i5.AuthServices>(() => authModule.authServices);
  gh.singleton<_i6.AuthorizationInterceptor>(
      networkModules.authorizationInterceptor);
  gh.factory<_i7.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i8.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i7.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i8.AppConfig>()),
      instanceName: 'unauthorized');
  gh.singleton<_i9.ErrorInterceptor>(networkModules.errorInterceptor);
  gh.factory<_i10.HomeScreenVM>(() => _i10.HomeScreenVM());
  gh.singleton<_i11.IDialogService>(uIModules.dialogService);
  gh.singleton<_i12.IStorage>(platformModules.storage);
  gh.singleton<_i13.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i14.LanguageInterceptor>(networkModules.languageInterceptor);
  gh.singleton<_i15.Loader>(uIModules.loader);
  gh.lazySingleton<_i16.LocalTokenDataSource>(
      () => authModule.localTokenDataSourceImpl,
      registerFor: {_develop, _staging, _production});
  gh.lazySingleton<_i16.LocalTokenDataSource>(
      () => authModule.localTokenDataSourceMock,
      registerFor: {_test});
  gh.lazySingleton<_i17.LocalUserDataSource>(
      () => authModule.localUserDataSourceImpl,
      registerFor: {_develop, _staging, _production});
  gh.lazySingleton<_i17.LocalUserDataSource>(
      () => authModule.localUserDataSourceMock,
      registerFor: {_test});
  gh.factory<_i18.LoginScreenVM>(() => _i18.LoginScreenVM());
  gh.singleton<_i19.RequestInterceptor>(networkModules.requestInterceptor);
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.singleton<_i3.AppBloc>(
      _i3.AppBloc.getItFactory(get<_i3.AppBlocServices>()));
  gh.lazySingleton<_i20.AuthApi>(() => _i20.AuthApi(
      get<_i7.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i5.AuthBloc>(() => authModule.authBloc);
  return get;
}

class _$PlatformModules extends _i21.PlatformModules {}

class _$AuthModule extends _i22.AuthModule {
  _$AuthModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i5.AuthServices get authServices =>
      _i5.AuthServices(_getIt<_i23.AuthRepository>());
  @override
  _i24.LocalTokenDataSourceImpl get localTokenDataSourceImpl =>
      _i24.LocalTokenDataSourceImpl();
  @override
  _i25.LocalTokenDataSourceMock get localTokenDataSourceMock =>
      _i25.LocalTokenDataSourceMock();
  @override
  _i26.LocalUserDataSourceImpl get localUserDataSourceImpl =>
      _i26.LocalUserDataSourceImpl();
  @override
  _i27.LocalUserDataSourceMock get localUserDataSourceMock =>
      _i27.LocalUserDataSourceMock();
  @override
  _i5.AuthBloc get authBloc =>
      _i5.AuthBloc.getItFactory(_getIt<_i5.AuthServices>());
}

class _$NetworkModules extends _i28.NetworkModules {}

class _$UIModules extends _i29.UIModules {}
