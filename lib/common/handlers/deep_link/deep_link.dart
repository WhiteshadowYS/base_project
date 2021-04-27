import 'dart:async';

import 'package:logging/logging.dart';
import 'package:uni_links2/uni_links.dart';
import 'package:base_project/config/app_router.gr.dart';

class DeepLinkService {
  final AppRouter _router;

  DeepLinkService(this._router);

  Logger get _logger => Logger('$runtimeType');

  late final StreamSubscription _subscription;

  Future<void> init() async {
    _logger.info('<init>');
    await initUniLinks();

    await initUniLinksStream();
  }

  Future<void> initUniLinks() async {
    try {
      final Uri? uri = await getInitialUri();
      _logger.info('<initUniLinks> => $uri');

      if (uri != null) _doRoute(uri.toString());
    } catch (e) {
      _logger.warning('$e');
    }
  }

  Future<void> initUniLinksStream() async {
    _subscription = linkStream.listen(
      (String? url) {
        _logger.info('<initUniLinksStream> => $url');

        _doRoute(url ?? '');
      },
      onError: (error) {
        _logger.warning('$error');
      },
    );
  }

  void _doRoute(String link) async {
    _logger.info('<_doRoute> => $link');

    if (link.contains('login')) {
      return await _router.push(LoginScreenRoute());
    }
  }

  void disposeUniLinks() => _subscription.cancel();
}
