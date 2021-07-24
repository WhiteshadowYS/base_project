import 'package:base_project/config/config.dart';
import 'package:base_project/utils/base_elements/base_api.dart';

class ApiMixin<Api extends BaseApi> {
  Api get api => getIt<Api>();
}
