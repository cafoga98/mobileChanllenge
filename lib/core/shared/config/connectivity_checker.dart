import 'package:connectivity_checker/connectivity_checker.dart';

class ConnectivityChecker {
  final ConnectivityWrapper connectivity;

  ConnectivityChecker({required this.connectivity});

  Future<bool> checkingConnection() async => await connectivity.isConnected;
}