// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/platform/storage/i_storage.dart' as _i18;
import '../common/ui/dialog/i_dialog_service.dart' as _i16;
import '../common/ui/loader/i_loader.dart' as _i17;
import '../common/ui/theme/i_theme_config.dart' as _i19;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i42;
import '../presentation/home/screens/home_screen/home_screen_vm.dart' as _i15;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i10;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i38;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i33;
import '../source/authorization/domain/services/sign_in_service.dart' as _i20;
import '../source/authorization/domain/services/sign_out_service.dart' as _i23;
import '../source/authorization/domain/services/sign_up_service.dart' as _i26;
import '../source/authorization/domain/services/user_service.dart' as _i30;
import '../source/authorization/infrastructure/api/sign_in_api.dart' as _i35;
import '../source/authorization/infrastructure/api/sign_out_api.dart' as _i36;
import '../source/authorization/infrastructure/api/sign_up_api.dart' as _i37;
import '../source/authorization/infrastructure/api/user_api.dart' as _i29;
import '../source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart'
    as _i40;
import '../source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart'
    as _i13;
import '../source/authorization/infrastructure/contracts/sign_out/sign_out_contract.dart'
    as _i11;
import '../source/authorization/infrastructure/contracts/sign_up/email_sign_up_contract.dart'
    as _i41;
import '../source/authorization/infrastructure/contracts/sign_up/google_sign_up_contract.dart'
    as _i14;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i39;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i34;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i21;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i22;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i25;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i24;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i27;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i28;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i31;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i32;
import 'app_router.gr.dart' as _i9;
import 'application/bloc/app_bloc.dart' as _i3;
import 'configs/app_config.dart' as _i4;
import 'configs/dev_config.dart' as _i7;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i8;
import 'configs/test_config.dart' as _i6;
import 'modules/network_modules.dart' as _i44;
import 'modules/platform_modules.dart' as _i43;
import 'modules/ui_modules.dart' as _i45;

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
  gh.singleton<_i3.AppBloc>(_i3.AppBloc());
  gh.factory<_i4.AppConfig>(() => _i5.ProdConfig(), registerFor: {_prod});
  gh.factory<_i4.AppConfig>(() => _i6.TestConfig(), registerFor: {_test});
  gh.factory<_i4.AppConfig>(() => _i7.DevConfig(), registerFor: {_dev});
  gh.factory<_i4.AppConfig>(() => _i8.StageConfig(), registerFor: {_stage});
  gh.singleton<_i9.AppRouter>(platformModules.router);
  gh.singleton<_i10.AuthorizationBloc>(_i10.AuthorizationBloc());
  gh.factory<_i11.DefaultSignOutContract>(() => _i11.DefaultSignOutContract());
  gh.factory<_i12.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i12.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i4.AppConfig>()),
      instanceName: 'unauthorized');
  gh.factory<_i13.GoogleSignInContract>(() => _i13.GoogleSignInContract());
  gh.factory<_i14.GoogleSignUpContract>(() => _i14.GoogleSignUpContract());
  gh.lazySingleton<_i15.HomeScreenVM>(() => _i15.HomeScreenVM());
  gh.singleton<_i16.IDialogService>(uIModules.dialogService);
  gh.singleton<_i17.ILoader>(uIModules.loader);
  gh.singleton<_i18.IStorage>(platformModules.storage);
  gh.singleton<_i19.IThemeConfig>(uIModules.themeConfig);
  gh.lazySingleton<_i20.SignInService>(() => _i21.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i20.SignInService>(() => _i22.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i23.SignOutService>(() => _i24.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i23.SignOutService>(() => _i25.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i26.SignUpService>(() => _i27.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i26.SignUpService>(() => _i28.SignUpServiceMock(),
      registerFor: {_test});
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i29.UserApi>(() => _i29.UserApi(
      get<_i12.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i30.UserService>(() => _i31.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i30.UserService>(() => _i32.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i33.UsersRepository>(() => _i34.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.lazySingleton<_i35.SignInApi>(() => _i35.SignInApi(
      get<_i12.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i36.SignOutApi>(() => _i36.SignOutApi(
      get<_i12.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i37.SignUpApi>(() => _i37.SignUpApi(
      get<_i12.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i38.UserRepository>(
      () => _i39.DataUserRepository(
          get<_i30.UserService>(),
          get<_i20.SignInService>(),
          get<_i26.SignUpService>(),
          get<_i23.SignOutService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i40.EmailSignInContract>(
      () => _i40.EmailSignInContract(get<_i35.SignInApi>()));
  gh.factory<_i41.EmailSignUpContract>(
      () => _i41.EmailSignUpContract(get<_i37.SignUpApi>()));
  gh.factory<_i42.LoginScreenVM>(() => _i42.LoginScreenVM(
      get<_i10.AuthorizationBloc>(),
      get<_i40.EmailSignInContract>(),
      get<_i13.GoogleSignInContract>()));
  return get;
}

class _$PlatformModules extends _i43.PlatformModules {}

class _$NetworkModules extends _i44.NetworkModules {}

class _$UIModules extends _i45.UIModules {}
