import 'package:base_project/common/sentry/sentry_app_overlay.dart';
import 'package:base_project/config/configs/config.dart';

import 'application/application.dart';
import 'common/sentry/sentry_app_overlay.dart';

void main() async {
  final config = Config();
  await config.init();

  await SentryAppOverlay.wrap(
    app: LocalizedApplication(),
    config: config,
  );
}
