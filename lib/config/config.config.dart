// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/ui/dialog/i_dialog_service.dart' as _i39;
import '../common/ui/loader/i_loader.dart' as _i40;
import '../common/ui/theme/i_theme_config.dart' as _i41;
import '../presentation/authorization/screens/login/login_screen_presentor.dart'
    as _i34;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i36;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i35;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i30;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i25;
import '../source/authorization/domain/services/sign_in_service.dart' as _i12;
import '../source/authorization/domain/services/sign_out_service.dart' as _i15;
import '../source/authorization/domain/services/sign_up_service.dart' as _i18;
import '../source/authorization/domain/services/user_service.dart' as _i22;
import '../source/authorization/infrastructure/api/sign_in_api.dart' as _i27;
import '../source/authorization/infrastructure/api/sign_out_api.dart' as _i28;
import '../source/authorization/infrastructure/api/sign_up_api.dart' as _i29;
import '../source/authorization/infrastructure/api/user_api.dart' as _i21;
import '../source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart'
    as _i32;
import '../source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart'
    as _i10;
import '../source/authorization/infrastructure/contracts/sign_out/sign_out_contract.dart'
    as _i8;
import '../source/authorization/infrastructure/contracts/sign_up/email_sign_up_contract.dart'
    as _i33;
import '../source/authorization/infrastructure/contracts/sign_up/google_sign_up_contract.dart'
    as _i11;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i31;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i26;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i14;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i13;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i16;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i17;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i19;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i20;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i23;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i24;
import 'app_router.gr.dart' as _i38;
import 'application/bloc/app_bloc.dart' as _i37;
import 'configs/app_config.dart' as _i3;
import 'configs/dev_config.dart' as _i6;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i4;
import 'configs/test_config.dart' as _i7;
import 'modules/network_modules.dart' as _i43;
import 'modules/platform_modules.dart' as _i42;
import 'modules/ui_modules.dart' as _i44;

const String _stage = 'stage';
const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final platformModules = _$PlatformModules();
  final networkModules = _$NetworkModules();
  final uIModules = _$UIModules();
  gh.factory<_i3.AppConfig>(() => _i4.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i5.ProdConfig(), registerFor: {_prod});
  gh.factory<_i3.AppConfig>(() => _i6.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i7.TestConfig(), registerFor: {_test});
  gh.factory<_i8.DefaultSignOutContract>(() => _i8.DefaultSignOutContract());
  gh.factory<_i9.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'authorized');
  gh.factory<_i9.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i3.AppConfig>()),
      instanceName: 'unauthorized');
  gh.factory<_i10.GoogleSignInContract>(() => _i10.GoogleSignInContract());
  gh.factory<_i11.GoogleSignUpContract>(() => _i11.GoogleSignUpContract());
  gh.lazySingleton<_i12.SignInService>(() => _i13.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i12.SignInService>(() => _i14.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i15.SignOutService>(() => _i16.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i15.SignOutService>(() => _i17.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i18.SignUpService>(() => _i19.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i18.SignUpService>(() => _i20.SignUpServiceMock(),
      registerFor: {_test});
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i21.UserApi>(() => _i21.UserApi(
      get<_i9.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i22.UserService>(() => _i23.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i22.UserService>(() => _i24.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i25.UsersRepository>(() => _i26.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.lazySingleton<_i27.SignInApi>(() => _i27.SignInApi(
      get<_i9.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i28.SignOutApi>(() => _i28.SignOutApi(
      get<_i9.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i29.SignUpApi>(() => _i29.SignUpApi(
      get<_i9.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i30.UserRepository>(
      () => _i31.DataUserRepository(
          get<_i22.UserService>(),
          get<_i12.SignInService>(),
          get<_i15.SignOutService>(),
          get<_i18.SignUpService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i32.EmailSignInContract>(
      () => _i32.EmailSignInContract(get<_i27.SignInApi>()));
  gh.factory<_i33.EmailSignUpContract>(
      () => _i33.EmailSignUpContract(get<_i29.SignUpApi>()));
  gh.lazySingleton<_i34.LoginScreenPresenter>(
      () => _i34.LoginScreenPresenter(get<_i35.AuthorizationBloc>()));
  gh.lazySingleton<_i36.LoginScreenVM>(() => _i36.LoginScreenVM(
      get<_i35.AuthorizationBloc>(),
      get<_i32.EmailSignInContract>(),
      get<_i10.GoogleSignInContract>()));
  gh.singleton<_i37.AppBloc>(_i37.AppBloc());
  gh.singleton<_i38.AppRouter>(platformModules.router);
  gh.singleton<_i39.IDialogService>(uIModules.dialogService);
  gh.singleton<_i40.ILoader>(uIModules.loader);
  gh.singleton<_i41.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i35.AuthorizationBloc>(_i35.AuthorizationBloc(
      get<_i30.UserRepository>(), get<_i25.UsersRepository>()));
  return get;
}

class _$PlatformModules extends _i42.PlatformModules {}

class _$NetworkModules extends _i43.NetworkModules {}

class _$UIModules extends _i44.UIModules {}
