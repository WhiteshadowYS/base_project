import 'package:logging/logging.dart';
import 'package:base_project/data/shared/base_api.dart';

abstract class BaseRepository<T extends BaseApi> {
  final T api;

  BaseRepository(this.api);

  Logger get logger => Logger('$runtimeType #${identityHashCode(this)}');
}
