import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IConnectionChecker {
  void init(void Function(ConnectivityResult) onConnectionChanged);
  Future<bool> hasConnection();
}
