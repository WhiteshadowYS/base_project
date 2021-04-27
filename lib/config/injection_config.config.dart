// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/handlers/deep_link/deep_link.dart' as _i23;
import '../common/handlers/interceptors/connection_intercepter.dart' as _i4;
import '../common/handlers/interceptors/error_intercepter.dart' as _i5;
import '../common/logic/connection/i_connection_checker.dart' as _i6;
import '../common/logic/device_info/i_device_info_loader.dart' as _i25;
import '../common/logic/focus/i_focus_manager.dart' as _i11;
import '../common/logic/project_info/i_project_info_loader.dart' as _i26;
import '../common/logic/storage/i_storage.dart' as _i14;
import '../common/logic/validator/i_validator.dart' as _i30;
import '../common/presentors/bottom_bar/i_bottom_bar_presenter.dart' as _i24;
import '../common/presentors/dialog/i_dialog_presenter.dart' as _i7;
import '../common/presentors/dictionary/i_dictionary.dart' as _i8;
import '../common/presentors/loader/i_loader_presenter.dart' as _i12;
import '../common/presentors/screen/i_screen_manager.dart' as _i27;
import '../common/presentors/side_menu/i_side_menu_presenter.dart' as _i28;
import '../common/presentors/status_bar/i_status_bar.dart' as _i29;
import '../data/auth/auth_service_impl.dart' as _i21;
import '../data/auth/repositories/auth_repository_aurhorized.dart' as _i18;
import '../data/auth/repositories/auth_repository_unauthorized.dart' as _i19;
import '../data/auth/storages/token_storage_impl.dart' as _i16;
import '../data/shared/adapters/error_adapter.dart' as _i10;
import '../data/shared/storages/langauge_storage.dart' as _i13;
import '../domain/application/bloc/app_bloc.dart' as _i31;
import '../domain/auth/auth_service.dart' as _i20;
import '../domain/auth/bloc/auth_bloc.dart' as _i32;
import '../domain/auth/storages/token_storage.dart' as _i15;
import '../domain/shared/dictionary/language.dart' as _i9;
import 'app_config.dart' as _i3;
import 'app_router.gr.dart' as _i22;
import 'modules/application_module_config.dart' as _i33;
import 'modules/network_module_config.dart' as _i34;
import 'modules/presentors_module_config.dart' as _i35;

const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final applicationModuleConfig = _$ApplicationModuleConfig();
  final networkModuleConfig = _$NetworkModuleConfig();
  final presentorsModuleConfig = _$PresentorsModuleConfig();
  gh.factory<_i3.AppConfig>(() => _i3.DevConfig(), registerFor: {_dev});
  gh.factory<_i3.AppConfig>(() => _i3.StageConfig(), registerFor: {_stage});
  gh.factory<_i3.AppConfig>(() => _i3.ProdConfig(), registerFor: {_prod});
  gh.lazySingleton<_i4.ConnectionIntercepter>(
      () => networkModuleConfig.connectionInterceptor);
  gh.lazySingleton<_i5.ErrorInterceptor>(
      () => networkModuleConfig.errorInterceptor);
  gh.lazySingleton<_i6.IConnectionChecker>(
      () => networkModuleConfig.connectionChecker);
  gh.lazySingleton<_i7.IDialogPresenter>(
      () => presentorsModuleConfig.dialogPresenter);
  gh.lazySingleton<_i8.IDictionary<_i9.Language>>(
      () => presentorsModuleConfig.dictionary);
  gh.lazySingleton<_i10.IErrorAdapter>(() => networkModuleConfig.errorAdapter);
  gh.factory<_i11.IFocusManager>(() => applicationModuleConfig.focusManager);
  gh.lazySingleton<_i12.ILoaderPresenter>(
      () => presentorsModuleConfig.loaderPresenter);
  gh.lazySingleton<_i13.LanguageStorage>(
      () => _i13.LanguageStorage(get<_i14.IStorage>()));
  gh.lazySingleton<_i15.TokenStorage>(
      () => _i16.TokenStorageImpl(get<_i14.IStorage>()));
  gh.factory<_i17.Dio>(
      () => networkModuleConfig.provideAuthorizedDio(
          get<_i3.AppConfig>(), get<_i15.TokenStorage>()),
      instanceName: 'authorized');
  gh.factory<_i17.Dio>(
      () => networkModuleConfig.provideUnAuthorizedDio(
          get<_i3.AppConfig>(), get<_i15.TokenStorage>()),
      instanceName: 'unauthorized');
  gh.lazySingleton<_i18.AuthRepositoryAuthorized>(() =>
      _i18.AuthRepositoryAuthorized(
          get<_i17.Dio>(instanceName: 'authorized'), get<_i3.AppConfig>()));
  gh.lazySingleton<_i19.AuthRepositoryUnauhthorized>(() =>
      _i19.AuthRepositoryUnauhthorized(
          get<_i17.Dio>(instanceName: 'unauthorized'), get<_i3.AppConfig>()));
  gh.lazySingleton<_i20.AuthService>(() => _i21.AuthServiceServiceImpl(
      get<_i18.AuthRepositoryAuthorized>(),
      get<_i19.AuthRepositoryUnauhthorized>()));
  gh.singleton<_i22.AppRouter>(applicationModuleConfig.router);
  gh.singleton<_i23.DeepLinkService>(applicationModuleConfig.deepLinks);
  gh.singleton<_i24.IBottomBarPresenter>(presentorsModuleConfig.bottomBar);
  gh.singleton<_i25.IDeviceInfoLoader>(applicationModuleConfig.deviceInfo);
  gh.singleton<_i26.IProjectInfoLoader>(applicationModuleConfig.projectInfo);
  gh.singleton<_i27.IScreenManager>(applicationModuleConfig.screenManager);
  gh.singleton<_i28.ISideMenuPresenter>(presentorsModuleConfig.sideMenu);
  gh.singleton<_i29.IStatusBar>(presentorsModuleConfig.statusBar);
  gh.singleton<_i14.IStorage>(applicationModuleConfig.storage);
  gh.singleton<_i30.IValidator>(applicationModuleConfig.validator);
  gh.singleton<_i31.AppBloc>(_i31.AppBloc(
      get<_i22.AppRouter>(),
      get<_i8.IDictionary<_i9.Language>>(),
      get<_i15.TokenStorage>(),
      get<_i23.DeepLinkService>()));
  gh.singleton<_i32.AuthBloc>(
      _i32.AuthBloc(get<_i12.ILoaderPresenter>(), get<_i20.AuthService>()));
  return get;
}

class _$ApplicationModuleConfig extends _i33.ApplicationModuleConfig {}

class _$NetworkModuleConfig extends _i34.NetworkModuleConfig {}

class _$PresentorsModuleConfig extends _i35.PresentorsModuleConfig {}
