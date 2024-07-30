

import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkStatusHelper {
  static Future<ConnectivityResult> getConnectivityStatus() async {
    final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile)) {
      return ConnectivityResult.mobile;
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      return ConnectivityResult.wifi;
    } else if (connectivityResult.contains(ConnectivityResult.none)) {
      return ConnectivityResult.none;
    } else {
      return ConnectivityResult.other;
    }
  }
}
