import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:base_project/config/app_config.dart';
import 'package:base_project/data/auth/auth_api.dart';
import 'package:base_project/data/shared/base_repository.dart';
import 'package:base_project/config/modules/network_module_config.dart';

@lazySingleton
class AuthRepositoryAuthorized extends BaseRepository<AuthApi> {
  final AppConfig config;

  AuthRepositoryAuthorized(
    @Named(authorized) Dio dio,
    this.config,
  ) : super(AuthApi(dio, baseUrl: config.baseUrl));

  Future<bool?> logout() async {
    late final bool response;

    if (!config.useMock) {
      try {
        await api.logout();
        response = true;
      } catch (e) {
        response = false;
      }
    } else {
      response = true;
    }

    return response;
  }
}
