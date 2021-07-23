// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/ui/dialog/i_dialog_service.dart' as _i26;
import '../common/ui/loader/i_loader.dart' as _i27;
import '../common/ui/theme/i_theme_config.dart' as _i28;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i29;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i22;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i20;
import '../source/authorization/domain/services/sign_in_service.dart' as _i8;
import '../source/authorization/domain/services/sign_out_service.dart' as _i11;
import '../source/authorization/domain/services/sign_up_service.dart' as _i14;
import '../source/authorization/domain/services/user_service.dart' as _i17;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i23;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i21;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i10;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i9;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i12;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i13;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i15;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i16;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i18;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i19;
import 'app_router.gr.dart' as _i25;
import 'application/bloc/app_bloc.dart' as _i24;
import 'configs/app_config.dart' as _i3;
import 'configs/dev_config.dart' as _i6;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i4;
import 'configs/test_config.dart' as _i7;
import 'modules/platform_modules.dart' as _i30;
import 'modules/ui_modules.dart' as _i31;

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
  final uIModules = _$UIModules();
  gh.factory<_i3.AppConfig>(() => _i4.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i5.ProdConfig(), registerFor: {_prod});
  gh.factory<_i3.AppConfig>(() => _i6.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i7.TestConfig(), registerFor: {_test});
  gh.lazySingleton<_i8.SignInService>(() => _i9.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i8.SignInService>(() => _i10.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i11.SignOutService>(() => _i12.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i11.SignOutService>(() => _i13.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i14.SignUpService>(() => _i15.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i14.SignUpService>(() => _i16.SignUpServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i17.UserService>(() => _i18.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i17.UserService>(() => _i19.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i20.UsersRepository>(() => _i21.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i22.UserRepository>(
      () => _i23.DataUserRepository(
          get<_i17.UserService>(),
          get<_i8.SignInService>(),
          get<_i11.SignOutService>(),
          get<_i14.SignUpService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.singleton<_i24.AppBloc>(_i24.AppBloc());
  gh.singleton<_i25.AppRouter>(platformModules.router);
  gh.singleton<_i26.IDialogService>(uIModules.dialogService);
  gh.singleton<_i27.ILoader>(uIModules.loader);
  gh.singleton<_i28.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i29.AuthorizationBloc>(_i29.AuthorizationBloc(
      get<_i22.UserRepository>(), get<_i20.UsersRepository>()));
  return get;
}

class _$PlatformModules extends _i30.PlatformModules {}

class _$UIModules extends _i31.UIModules {}
