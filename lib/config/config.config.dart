// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/bloc/app_bloc.dart' as _i3;
import '../common/network/interceptors/authorization_interceptor.dart' as _i11;
import '../common/network/interceptors/error_interceptor.dart' as _i14;
import '../common/network/interceptors/language_interceptor.dart' as _i21;
import '../common/network/interceptors/request_interceptor.dart' as _i24;
import '../common/platform/storage/i_storage.dart' as _i19;
import '../common/ui/dialog/i_dialog_service.dart' as _i18;
import '../common/ui/loader/loader.dart' as _i22;
import '../common/ui/theme/i_theme_config.dart' as _i20;
import '../presentation/home/screens/home/home_screen_vm.dart' as _i17;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i10;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i43;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i38;
import '../source/authorization/domain/services/sign_in_service.dart' as _i25;
import '../source/authorization/domain/services/sign_out_service.dart' as _i28;
import '../source/authorization/domain/services/sign_up_service.dart' as _i31;
import '../source/authorization/domain/services/user_service.dart' as _i35;
import '../source/authorization/infrastructure/api/sign_in_api.dart' as _i40;
import '../source/authorization/infrastructure/api/sign_out_api.dart' as _i41;
import '../source/authorization/infrastructure/api/sign_up_api.dart' as _i42;
import '../source/authorization/infrastructure/api/user_api.dart' as _i34;
import '../source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart'
    as _i45;
import '../source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart'
    as _i15;
import '../source/authorization/infrastructure/contracts/sign_out/sign_out_contract.dart'
    as _i12;
import '../source/authorization/infrastructure/contracts/sign_up/email_sign_up_contract.dart'
    as _i46;
import '../source/authorization/infrastructure/contracts/sign_up/google_sign_up_contract.dart'
    as _i16;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i44;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i39;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i26;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i27;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i29;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i30;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i32;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i33;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i36;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i37;
import '../source/notifications/application/bloc/notifications_bloc.dart'
    as _i23;
import 'app_router.gr.dart' as _i9;
import 'configs/app_config.dart' as _i4;
import 'configs/dev_config.dart' as _i7;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i8;
import 'configs/test_config.dart' as _i6;
import 'modules/network_modules.dart' as _i48;
import 'modules/platform_modules.dart' as _i47;
import 'modules/ui_modules.dart' as _i49;

const String _prod = 'prod';
const String _test = 'test';
const String _dev = 'dev';
const String _stage = 'stage';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final platformModules = _$PlatformModules();
  final networkModules = _$NetworkModules();
  final uIModules = _$UIModules();
  gh.lazySingleton<_i3.AppBlocServices>(() => _i3.AppBlocServices());
  gh.factory<_i4.AppConfig>(() => _i5.ProdConfig(), registerFor: {_prod});
  gh.factory<_i4.AppConfig>(() => _i6.TestConfig(), registerFor: {_test});
  gh.factory<_i4.AppConfig>(() => _i7.DevConfig(), registerFor: {_dev});
  gh.factory<_i4.AppConfig>(() => _i8.StageConfig(), registerFor: {_stage});
  gh.singleton<_i9.AppRouter>(platformModules.router);
  gh.lazySingleton<_i10.AuthorizationBlocServices>(
      () => _i10.AuthorizationBlocServices());
  gh.singleton<_i11.AuthorizationInterceptor>(
      networkModules.authorizationInterceptor);
  gh.factory<_i12.DefaultSignOutContract>(() => _i12.DefaultSignOutContract());
  gh.factory<_i13.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i13.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'unauthorized');
  gh.singleton<_i14.ErrorInterceptor>(networkModules.errorInterceptor);
  gh.factory<_i15.GoogleSignInContract>(() => _i15.GoogleSignInContract());
  gh.factory<_i16.GoogleSignUpContract>(() => _i16.GoogleSignUpContract());
  gh.factory<_i17.HomeScreenVM>(() => _i17.HomeScreenVM());
  gh.singleton<_i18.IDialogService>(uIModules.dialogService);
  gh.singleton<_i19.IStorage>(platformModules.storage);
  gh.singleton<_i20.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i21.LanguageInterceptor>(networkModules.languageInterceptor);
  gh.singleton<_i22.Loader>(uIModules.loader);
  gh.lazySingleton<_i23.NotificationsBlocServices>(
      () => _i23.NotificationsBlocServices());
  gh.singleton<_i24.RequestInterceptor>(networkModules.requestInterceptor);
  gh.lazySingleton<_i25.SignInService>(() => _i26.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i25.SignInService>(() => _i27.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i28.SignOutService>(() => _i29.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i28.SignOutService>(() => _i30.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i31.SignUpService>(() => _i32.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i31.SignUpService>(() => _i33.SignUpServiceMock(),
      registerFor: {_test});
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i34.UserApi>(() => _i34.UserApi(
      get<_i13.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i35.UserService>(() => _i36.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i35.UserService>(() => _i37.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i38.UsersRepository>(() => _i39.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.singleton<_i3.AppBloc>(
      _i3.AppBloc.getItFactory(get<_i3.AppBlocServices>()));
  gh.singleton<_i10.AuthorizationBloc>(_i10.AuthorizationBloc.getItFactory(
      get<_i10.AuthorizationBlocServices>()));
  gh.singleton<_i23.NotificationsBloc>(_i23.NotificationsBloc.getItFactory(
      get<_i23.NotificationsBlocServices>()));
  gh.lazySingleton<_i40.SignInApi>(() => _i40.SignInApi(
      get<_i13.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i41.SignOutApi>(() => _i41.SignOutApi(
      get<_i13.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i42.SignUpApi>(() => _i42.SignUpApi(
      get<_i13.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i43.UserRepository>(
      () => _i44.DataUserRepository(
          get<_i35.UserService>(),
          get<_i25.SignInService>(),
          get<_i31.SignUpService>(),
          get<_i28.SignOutService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i45.EmailSignInContract>(
      () => _i45.EmailSignInContract(get<_i40.SignInApi>()));
  gh.factory<_i46.EmailSignUpContract>(
      () => _i46.EmailSignUpContract(get<_i42.SignUpApi>()));
  return get;
}

class _$PlatformModules extends _i47.PlatformModules {}

class _$NetworkModules extends _i48.NetworkModules {}

class _$UIModules extends _i49.UIModules {}
