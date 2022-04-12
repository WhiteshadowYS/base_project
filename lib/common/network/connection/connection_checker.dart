import 'dart:async';

import 'package:base_project/utils/printers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'i_connection_checker.dart';

class ConnectionChecker implements IConnectionChecker {
  final Connectivity _connectivity = Connectivity();

  @override
  void init(
    void Function(ConnectivityResult) onConnectionChanged,
  ) async {
    infoPrint('<init>', this);
    _connectivity.onConnectivityChanged.listen((status) {
      onConnectionChanged(status);
    });
  }

  @override
  Future<bool> hasConnection() async {
    final result = await _connectivity.checkConnectivity();
    infoPrint('<init>', this);

    return !(result == ConnectivityResult.none);
  }
}
