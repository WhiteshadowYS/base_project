import 'package:base_project/resources/consts.dart';
import 'package:base_project/source/auth/application/bloc/auth_bloc.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source_impl.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/token/local_token_data_source_mock.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source_impl.dart';
import 'package:base_project/source/auth/infrastructure/data_sources/local_data_sources/user/local_user_data_source_mock.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AuthModule {
  @lazySingleton
  AuthBloc get authBloc;

  @lazySingleton
  AuthServices get authServices;

  // @singleton
  // AuthRepository get authRepository;

  @LazySingleton(as: LocalUserDataSource, env: Const.mainEnvs)
  LocalUserDataSourceImpl get localUserDataSourceImpl;

  @LazySingleton(as: LocalTokenDataSource, env: Const.mainEnvs)
  LocalTokenDataSourceImpl get localTokenDataSourceImpl;

  @LazySingleton(as: LocalUserDataSource, env: Const.testEnvs)
  LocalUserDataSourceMock get localUserDataSourceMock;

  @LazySingleton(as: LocalTokenDataSource, env: Const.testEnvs)
  LocalTokenDataSourceMock get localTokenDataSourceMock;
}
