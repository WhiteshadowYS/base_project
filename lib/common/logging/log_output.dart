import 'dart:developer' as developer;

import 'package:logger/logger.dart';

/// Default implementation of [LogOutput].
///
/// It sends everything to the system console.
class ColoredLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(developer.log);
  }
}
