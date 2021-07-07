// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/ui/bottom_bar/i_bottom_bar.dart' as _i12;
import '../common/ui/theme/i_theme_config.dart' as _i13;
import '../src/authorization/application/bloc/authorization_bloc.dart' as _i11;
import '../src/authorization/data/auth_service_impl.dart' as _i8;
import '../src/authorization/domain/authorization_service.dart' as _i7;
import '../src/shared/application/bloc/app_bloc.dart' as _i9;
import 'app_router.gr.dart' as _i10;
import 'configs/app_config.dart' as _i3;
import 'configs/dev_config.dart' as _i6;
import 'configs/prod_config.dart' as _i5;
import 'configs/stage_config.dart' as _i4;
import 'modules/platform_modules.dart' as _i14;
import 'modules/ui_modules.dart' as _i15;

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
  gh.lazySingleton<_i7.AuthService>(() => _i8.AuthServiceimpl());
  gh.singleton<_i9.AppBloc>(_i9.AppBloc());
  gh.singleton<_i10.AppRouter>(platformModules.router);
  gh.singleton<_i11.AuthorizationBloc>(
      _i11.AuthorizationBloc(get<_i7.AuthService>()));
  gh.singleton<_i12.IBottomBar>(uIModules.bottomBar);
  gh.singleton<_i13.IThemeConfig>(uIModules.themeConfig);
  return get;
}

class _$PlatformModules extends _i14.PlatformModules {}

class _$UIModules extends _i15.UIModules {}
