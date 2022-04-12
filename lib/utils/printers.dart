import 'package:base_project/common/logging/log_output.dart';
import 'package:logger/logger.dart';

final _logger = Logger(
  printer: PrettyPrinter(
    lineLength: 100,
    methodCount: 0,
    errorMethodCount: 4,
  ),
  output: ColoredLogOutput(),
);

String _messageBuilder(Object? message, Object? object) {
  return '[${object.runtimeType} #${identityHashCode(object)}] => $message';
}

void errorPrint(
  Object? message, {
  Object? object,
  Object? error,
  StackTrace? trace,
}) {
  _logger.e(
    _messageBuilder(message, object),
    error,
    trace,
  );
}

void dataPrint(
  Object? message, [
  Object? object,
]) {
  _logger.v(message);
}

void networkPrint(
  Object? message, [
  Object? object,
]) {
  _logger.v('NETWORK: ' + _messageBuilder(message, object));
}

void blocPrint(
  Object? message, [
  Object? object,
]) {
  _logger.wtf(
    'BLOC: ' + _messageBuilder(message, object),
  );
}

void infoPrint(
  Object? message, [
  Object? object,
]) {
  _logger.i(
    'INFO: ' + _messageBuilder(message, object),
  );
}

void warningPrint(
  Object? message, [
  Object? object,
]) {
  _logger.w(
    'WARNING: ' + _messageBuilder(message, object),
  );
}
