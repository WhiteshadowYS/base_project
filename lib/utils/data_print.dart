import 'package:logging/logging.dart';

void dataPrint(String message, [Object? object]) {
  Logger('[${object.runtimeType} #${identityHashCode(object)}] =>').info(message);
}
