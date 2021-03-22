import 'package:url_launcher/url_launcher.dart';
import 'package:pedantic/pedantic.dart';

class UrlManager {
  static const tag = '[DeviceInfoService]';

  UrlManager._privateConstructor();

  static final UrlManager _instance = UrlManager._privateConstructor();

  static UrlManager get instance => _instance;

  Future<void> openMapWithAddress(String address, {void Function(String)? errorCallback, void Function()? successCallback}) async {
    await launchBrowser('https://www.google.com/maps/search/?api=1&query=$address', errorCallback: errorCallback, successCallback: successCallback);
  }

  Future<void> launchBrowser(String url, {void Function(String)? errorCallback, void Function()? successCallback}) async {
    try {
      unawaited(launch(
        url,
      ));

      successCallback!();
    } catch (e) {
      print('launchBrowser => could not launch $url, error: $e');
      if (errorCallback != null) {
        errorCallback(e.toString());
      }
    }
  }
}
