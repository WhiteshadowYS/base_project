// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/ui/dialog/i_dialog_service.dart' as _i41;
import '../common/ui/loader/i_loader.dart' as _i42;
import '../common/ui/theme/i_theme_config.dart' as _i43;
import '../presentation/authorization/screens/login/login_screen_presentor.dart'
    as _i36;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i38;
import '../presentation/home/screens/home_screen/home_screen_presentor.dart'
    as _i12;
import '../presentation/home/screens/home_screen/home_screen_vm.dart' as _i13;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i37;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i32;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i27;
import '../source/authorization/domain/services/sign_in_service.dart' as _i14;
import '../source/authorization/domain/services/sign_out_service.dart' as _i17;
import '../source/authorization/domain/services/sign_up_service.dart' as _i20;
import '../source/authorization/domain/services/user_service.dart' as _i24;
import '../source/authorization/infrastructure/api/sign_in_api.dart' as _i29;
import '../source/authorization/infrastructure/api/sign_out_api.dart' as _i30;
import '../source/authorization/infrastructure/api/sign_up_api.dart' as _i31;
import '../source/authorization/infrastructure/api/user_api.dart' as _i23;
import '../source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart'
    as _i34;
import '../source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart'
    as _i10;
import '../source/authorization/infrastructure/contracts/sign_out/sign_out_contract.dart'
    as _i8;
import '../source/authorization/infrastructure/contracts/sign_up/email_sign_up_contract.dart'
    as _i35;
import '../source/authorization/infrastructure/contracts/sign_up/google_sign_up_contract.dart'
    as _i11;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i33;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i28;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i16;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i15;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i18;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i19;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i21;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i22;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i26;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i25;
import 'app_router.gr.dart' as _i40;
import 'application/bloc/app_bloc.dart' as _i39;
import 'configs/app_config.dart' as _i3;
import 'configs/dev_config.dart' as _i6;
import 'configs/prod_config.dart' as _i4;
import 'configs/stage_config.dart' as _i7;
import 'configs/test_config.dart' as _i5;
import 'modules/network_modules.dart' as _i45;
import 'modules/platform_modules.dart' as _i44;
import 'modules/ui_modules.dart' as _i46;

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
  gh.factory<_i3.AppConfig>(() => _i4.ProdConfig(), registerFor: {_prod});
  gh.factory<_i3.AppConfig>(() => _i5.TestConfig(), registerFor: {_test});
  gh.factory<_i3.AppConfig>(() => _i6.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i7.StageConfig(), registerFor: {_stage});
  gh.factory<_i8.DefaultSignOutContract>(() => _i8.DefaultSignOutContract());
  gh.factory<_i9.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i9.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'unauthorized');
  gh.factory<_i10.GoogleSignInContract>(() => _i10.GoogleSignInContract());
  gh.factory<_i11.GoogleSignUpContract>(() => _i11.GoogleSignUpContract());
  gh.lazySingleton<_i12.HomeScreenPresenter>(() => _i12.HomeScreenPresenter());
  gh.lazySingleton<_i13.HomeScreenVM>(() => _i13.HomeScreenVM());
  gh.lazySingleton<_i14.SignInService>(() => _i15.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i14.SignInService>(() => _i16.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i17.SignOutService>(() => _i18.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i17.SignOutService>(() => _i19.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i20.SignUpService>(() => _i21.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i20.SignUpService>(() => _i22.SignUpServiceMock(),
      registerFor: {_test});
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i23.UserApi>(() => _i23.UserApi(
      get<_i9.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i24.UserService>(() => _i25.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i24.UserService>(() => _i26.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i27.UsersRepository>(() => _i28.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.lazySingleton<_i29.SignInApi>(() => _i29.SignInApi(
      get<_i9.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i30.SignOutApi>(() => _i30.SignOutApi(
      get<_i9.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i31.SignUpApi>(() => _i31.SignUpApi(
      get<_i9.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i32.UserRepository>(
      () => _i33.DataUserRepository(
          get<_i24.UserService>(),
          get<_i14.SignInService>(),
          get<_i20.SignUpService>(),
          get<_i17.SignOutService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i34.EmailSignInContract>(
      () => _i34.EmailSignInContract(get<_i29.SignInApi>()));
  gh.factory<_i35.EmailSignUpContract>(
      () => _i35.EmailSignUpContract(get<_i31.SignUpApi>()));
  gh.lazySingleton<_i36.LoginScreenPresenter>(
      () => _i36.LoginScreenPresenter(get<_i37.AuthorizationBloc>()));
  gh.lazySingleton<_i38.LoginScreenVM>(() => _i38.LoginScreenVM(
      get<_i37.AuthorizationBloc>(),
      get<_i34.EmailSignInContract>(),
      get<_i10.GoogleSignInContract>()));
  gh.singleton<_i39.AppBloc>(_i39.AppBloc());
  gh.singleton<_i40.AppRouter>(platformModules.router);
  gh.singleton<_i41.IDialogService>(uIModules.dialogService);
  gh.singleton<_i42.ILoader>(uIModules.loader);
  gh.singleton<_i43.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i37.AuthorizationBloc>(_i37.AuthorizationBloc(
      get<_i32.UserRepository>(), get<_i27.UsersRepository>()));
  return get;
}

class _$PlatformModules extends _i44.PlatformModules {}

class _$NetworkModules extends _i45.NetworkModules {}

class _$UIModules extends _i46.UIModules {}
