import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivityChecker {
  NetworkConnectivityChecker._privateConstructor();

  static var shared = NetworkConnectivityChecker._privateConstructor();

 Future<bool> get status async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
