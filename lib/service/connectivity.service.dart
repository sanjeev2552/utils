// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/widgets.dart';

part of utils;

class ConnectivityService {
  ConnectivityService._();

  static final ConnectivityService _instance = ConnectivityService._();

  static ConnectivityService get instance => _instance;

  void registerConnectivityListener(VoidCallback onConnected, VoidCallback onError) {
    Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        onConnected();
      } else {
        onError();
      }
    });
  }
}
