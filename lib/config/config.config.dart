// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/application_vm.dart' as _i4;
import '../common/network/interceptors/authorization_interceptor.dart' as _i5;
import '../common/network/interceptors/error_interceptor.dart' as _i8;
import '../common/network/interceptors/language_interceptor.dart' as _i11;
import '../common/network/interceptors/request_interceptor.dart' as _i15;
import '../common/ui/dialog/i_dialog_service.dart' as _i9;
import '../common/ui/loader/loader.dart' as _i12;
import '../common/ui/theme/i_theme_config.dart' as _i10;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i21;
import '../source/auth/auth_service.dart' as _i20;
import '../source/auth/data/local/local_token_data_source.dart' as _i13;
import '../source/auth/data/local/local_user_data_source.dart' as _i14;
import '../source/auth/data/remote/remote_auth_data_source.dart' as _i18;
import '../source/auth/repositories/contracts/auth_contract.dart' as _i19;
import '../source/auth/repositories/contracts/token_contract.dart' as _i16;
import '../source/auth/repositories/contracts/user_contract.dart' as _i17;
import 'app_router.gr.dart' as _i3;
import 'configs/app_config.dart' as _i7;
import 'modules/network_modules.dart' as _i23;
import 'modules/platform_modules.dart' as _i22;
import 'modules/ui_modules.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final platformModules = _$PlatformModules();
  final networkModules = _$NetworkModules();
  final uIModules = _$UIModules();
  gh.singleton<_i3.AppRouter>(platformModules.router);
  gh.lazySingleton<_i4.ApplicationVM>(() => _i4.ApplicationVM());
  gh.singleton<_i5.AuthorizationInterceptor>(
      networkModules.authorizationInterceptor);
  gh.factory<_i6.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i7.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i6.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i7.AppConfig>()),
      instanceName: 'unauthorized');
  gh.singleton<_i8.ErrorInterceptor>(networkModules.errorInterceptor);
  gh.singleton<_i9.IDialogService>(uIModules.dialogService);
  gh.singleton<_i10.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i11.LanguageInterceptor>(networkModules.languageInterceptor);
  gh.singleton<_i12.Loader>(uIModules.loader);
  gh.lazySingleton<_i13.LocalTokenDataSource>(
      () => _i13.LocalTokenDataSource());
  gh.lazySingleton<_i14.LocalUserDataSource>(() => _i14.LocalUserDataSource());
  gh.singleton<_i15.RequestInterceptor>(networkModules.requestInterceptor);
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i16.TokenContract>(
      () => _i16.TokenContract(get<_i13.LocalTokenDataSource>()));
  gh.lazySingleton<_i17.UserContract>(
      () => _i17.UserContract(get<_i14.LocalUserDataSource>()));
  gh.lazySingleton<_i18.RemoteAuthDataSource>(() => _i18.RemoteAuthDataSource(
      get<_i6.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i19.AuthContract>(
      () => _i19.AuthContract(get<_i18.RemoteAuthDataSource>()));
  gh.lazySingleton<_i20.AuthService>(() => _i20.AuthService(
      get<_i19.AuthContract>(),
      get<_i16.TokenContract>(),
      get<_i17.UserContract>()));
  gh.factory<_i21.LoginScreenVM>(
      () => _i21.LoginScreenVM(get<_i20.AuthService>()));
  return get;
}

class _$PlatformModules extends _i22.PlatformModules {}

class _$NetworkModules extends _i23.NetworkModules {}

class _$UIModules extends _i24.UIModules {}
