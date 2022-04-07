import 'dart:async';

import 'package:base_project/config/ui_manger.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:logging/logging.dart';

import 'i_connection_checker.dart';

class ConnectionChecker implements IConnectionChecker {
  Logger get _logger => Logger('$runtimeType');

  final Connectivity _connectivity = Connectivity();

  @override
  void init(
    void Function(ConnectivityResult) onConnectionChanged,
  ) async {
    UIManager.logger.i('<init>', this);
    _connectivity.onConnectivityChanged.listen((status) {
      onConnectionChanged(status);
    });
  }

  @override
  Future<bool> hasConnection() async {
    final result = await _connectivity.checkConnectivity();
    UIManager.logger.v('<init>', this);

    return !(result == ConnectivityResult.none);
  }
}
