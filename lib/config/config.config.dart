// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i19;

import '../application/bloc/app_bloc.dart' as _i3;
import '../common/network/interceptors/authorization_interceptor.dart' as _i6;
import '../common/network/interceptors/error_interceptor.dart' as _i10;
import '../common/network/interceptors/language_interceptor.dart' as _i17;
import '../common/network/interceptors/request_interceptor.dart' as _i21;
import '../common/platform/storage/i_storage.dart' as _i15;
import '../common/ui/dialog/i_dialog_service.dart' as _i14;
import '../common/ui/loader/loader.dart' as _i18;
import '../common/ui/theme/i_theme_config.dart' as _i16;
import '../presentation/authorization/screens/login/login_screen_vm.dart'
    as _i44;
import '../presentation/home/screens/home/home_screen_vm.dart' as _i13;
import '../source/authorization/application/bloc/authorization_bloc.dart'
    as _i5;
import '../source/authorization/domain/repositories/user_repository.dart'
    as _i40;
import '../source/authorization/domain/repositories/users_repository.dart'
    as _i35;
import '../source/authorization/domain/services/sign_in_service.dart' as _i22;
import '../source/authorization/domain/services/sign_out_service.dart' as _i25;
import '../source/authorization/domain/services/sign_up_service.dart' as _i28;
import '../source/authorization/domain/services/user_service.dart' as _i32;
import '../source/authorization/infrastructure/api/sign_in_api.dart' as _i37;
import '../source/authorization/infrastructure/api/sign_out_api.dart' as _i38;
import '../source/authorization/infrastructure/api/sign_up_api.dart' as _i39;
import '../source/authorization/infrastructure/api/user_api.dart' as _i31;
import '../source/authorization/infrastructure/contracts/sign_in/email_sign_in_contract.dart'
    as _i42;
import '../source/authorization/infrastructure/contracts/sign_in/google_sign_in_contract.dart'
    as _i11;
import '../source/authorization/infrastructure/contracts/sign_out/sign_out_contract.dart'
    as _i7;
import '../source/authorization/infrastructure/contracts/sign_up/email_sign_up_contract.dart'
    as _i43;
import '../source/authorization/infrastructure/contracts/sign_up/google_sign_up_contract.dart'
    as _i12;
import '../source/authorization/infrastructure/repositories/user/data_user_repository.dart'
    as _i41;
import '../source/authorization/infrastructure/repositories/users/data_users_repository.dart'
    as _i36;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_impl.dart'
    as _i24;
import '../source/authorization/infrastructure/services/sign_in/sign_in_service_mock.dart'
    as _i23;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_impl.dart'
    as _i27;
import '../source/authorization/infrastructure/services/sign_out/sign_out_service_mock.dart'
    as _i26;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_impl.dart'
    as _i29;
import '../source/authorization/infrastructure/services/sign_up/sign_up_service_mock.dart'
    as _i30;
import '../source/authorization/infrastructure/services/user/user_service_impl.dart'
    as _i33;
import '../source/authorization/infrastructure/services/user/user_service_mock.dart'
    as _i34;
import '../source/notifications/application/bloc/notifications_bloc.dart'
    as _i20;
import 'app_router.gr.dart' as _i4;
import 'configs/app_config.dart' as _i9;
import 'modules/network_modules.dart' as _i46;
import 'modules/platform_modules.dart' as _i45;
import 'modules/ui_modules.dart' as _i47;

const String _test = 'test';
const String _dev = 'dev';
const String _stage = 'stage';
const String _prod = 'prod';
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
  gh.singleton<_i4.AppRouter>(platformModules.router);
  gh.lazySingleton<_i5.AuthorizationBlocServices>(
      () => _i5.AuthorizationBlocServices());
  gh.singleton<_i6.AuthorizationInterceptor>(
      networkModules.authorizationInterceptor);
  gh.factory<_i7.DefaultSignOutContract>(() => _i7.DefaultSignOutContract());
  gh.factory<_i8.Dio>(
      () => networkModules.provideUnAuthorizedDio(get<_i9.AppConfig>()),
      instanceName: 'unauthorized');
  gh.factory<_i8.Dio>(
      () => networkModules.provideAuthorizedDio(get<_i9.AppConfig>()),
      instanceName: 'authorized');
  gh.singleton<_i10.ErrorInterceptor>(networkModules.errorInterceptor);
  gh.factory<_i11.GoogleSignInContract>(() => _i11.GoogleSignInContract());
  gh.factory<_i12.GoogleSignUpContract>(() => _i12.GoogleSignUpContract());
  gh.factory<_i13.HomeScreenVM>(() => _i13.HomeScreenVM());
  gh.singleton<_i14.IDialogService>(uIModules.dialogService);
  gh.singleton<_i15.IStorage>(platformModules.storage);
  gh.singleton<_i16.IThemeConfig>(uIModules.themeConfig);
  gh.singleton<_i17.LanguageInterceptor>(networkModules.languageInterceptor);
  gh.singleton<_i18.Loader>(uIModules.loader);
  gh.singleton<_i19.Logger>(platformModules.logger);
  gh.lazySingleton<_i20.NotificationsBlocServices>(
      () => _i20.NotificationsBlocServices());
  gh.singleton<_i21.RequestInterceptor>(networkModules.requestInterceptor);
  gh.lazySingleton<_i22.SignInService>(() => _i23.SignInServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i22.SignInService>(() => _i24.SignInServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i25.SignOutService>(() => _i26.SignOutServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i25.SignOutService>(() => _i27.SignOutServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i28.SignUpService>(() => _i29.SignUpServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i28.SignUpService>(() => _i30.SignUpServiceMock(),
      registerFor: {_test});
  gh.factory<String>(() => networkModules.baseUrl, instanceName: 'base_url');
  gh.lazySingleton<_i31.UserApi>(() => _i31.UserApi(
      get<_i8.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i32.UserService>(() => _i33.UserServiceImpl(),
      registerFor: {_dev, _stage, _prod});
  gh.lazySingleton<_i32.UserService>(() => _i34.UserServiceMock(),
      registerFor: {_test});
  gh.lazySingleton<_i35.UsersRepository>(() => _i36.DataUsersRepository(),
      registerFor: {_test, _dev, _stage, _prod});
  gh.singleton<_i3.AppBloc>(
      _i3.AppBloc.getItFactory(get<_i3.AppBlocServices>()));
  gh.singleton<_i5.AuthorizationBloc>(
      _i5.AuthorizationBloc.getItFactory(get<_i5.AuthorizationBlocServices>()));
  gh.singleton<_i20.NotificationsBloc>(_i20.NotificationsBloc.getItFactory(
      get<_i20.NotificationsBlocServices>()));
  gh.lazySingleton<_i37.SignInApi>(() => _i37.SignInApi(
      get<_i8.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i38.SignOutApi>(() => _i38.SignOutApi(
      get<_i8.Dio>(instanceName: 'authorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.lazySingleton<_i39.SignUpApi>(() => _i39.SignUpApi(
      get<_i8.Dio>(instanceName: 'unauthorized'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i40.UserRepository>(
      () => _i41.DataUserRepository(
          get<_i32.UserService>(),
          get<_i22.SignInService>(),
          get<_i28.SignUpService>(),
          get<_i25.SignOutService>()),
      registerFor: {_test, _dev, _stage, _prod});
  gh.factory<_i42.EmailSignInContract>(
      () => _i42.EmailSignInContract(get<_i37.SignInApi>()));
  gh.factory<_i43.EmailSignUpContract>(
      () => _i43.EmailSignUpContract(get<_i39.SignUpApi>()));
  gh.factory<_i44.LoginScreenVM>(() => _i44.LoginScreenVM(
      get<_i5.AuthorizationBloc>(),
      get<_i42.EmailSignInContract>(),
      get<_i11.GoogleSignInContract>()));
  return get;
}

class _$PlatformModules extends _i45.PlatformModules {}

class _$NetworkModules extends _i46.NetworkModules {}

class _$UIModules extends _i47.UIModules {}
