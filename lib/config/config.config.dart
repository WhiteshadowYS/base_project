// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/ui/dialog/i_dialog_service.dart' as _i21;
import '../common/ui/loader/i_loader.dart' as _i22;
import '../common/ui/theme/i_theme_config.dart' as _i23;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i24;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i17;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i15;
import '../source/authorization/domain/services/sign_in_service.dart' as _i7;
import '../source/authorization/domain/services/sign_out_service.dart' as _i9;
import '../source/authorization/domain/services/sign_up_service.dart' as _i11;
import '../source/authorization/domain/services/user_service.dart' as _i13;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i18;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i16;
import '../source/authorization/infrastructure/services/sign_in_service_impl.dart'
    as _i8;
import '../source/authorization/infrastructure/services/sign_out_service_impl.dart'
    as _i10;
import '../source/authorization/infrastructure/services/sign_up_service_impl.dart'
    as _i12;
import '../source/authorization/infrastructure/services/user_service_impl.dart'
    as _i14;
import 'app_router.gr.dart' as _i20;
import 'application/bloc/app_bloc.dart' as _i19;
import 'configs/app_config.dart' as _i3;
import 'configs/dev_config.dart' as _i6;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i4;
import 'modules/platform_modules.dart' as _i25;
import 'modules/ui_modules.dart' as _i26;

const String _stage = 'stage';
const String _prod = 'prod';
const String _dev = 'dev';
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
  gh.lazySingleton<_i7.SignInService>(() => _i8.SignInServiceImpl());
  gh.lazySingleton<_i9.SignOutService>(() => _i10.SignOutServiceImpl());
  gh.lazySingleton<_i11.SignUpService>(() => _i12.SignUpServiceImpl());
  gh.lazySingleton<_i13.UserService>(() => _i14.UserServiceImpl());
  gh.lazySingleton<_i15.UsersRepository>(() => _i16.DataUsersRepository());
  gh.factory<_i17.UserRepository>(() => _i18.DataUserRepository(
      get<_i13.UserService>(),
      get<_i7.SignInService>(),
      get<_i9.SignOutService>(),
      get<_i11.SignUpService>()));
  gh.singleton<_i19.AppBloc>(_i19.AppBloc());
  gh.singleton<_i20.AppRouter>(platformModules.router);
  gh.singleton<_i21.IDialogService>(uIModules.dialogService);
  gh.singleton<_i22.ILoader>(uIModules.loader);
  gh.singleton<_i23.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i24.AuthorizationBloc>(_i24.AuthorizationBloc(
      get<_i17.UserRepository>(), get<_i15.UsersRepository>()));
  return get;
}

class _$PlatformModules extends _i25.PlatformModules {}

class _$UIModules extends _i26.UIModules {}
