import 'dart:async';

import 'package:base_project/config/configs/app_config.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

abstract class SentryAppOverlay {
  static Future<void> wrap({
    required Widget app,
    required AppConfig config,
  }) async {
    await runZonedGuarded(
      () async {
        await SentryFlutter.init(
          (options) {
            options.environment = config.name;
            options.dsn = config.sentryUrl;
            options.enableOutOfMemoryTracking = false;
          },
          appRunner: () => runApp(
            DefaultAssetBundle(
              bundle: SentryAssetBundle(
                enableStructuredDataTracing: true,
              ),
              child: app,
            ),
          ),
        );
      },
      (exception, stackTrace) async {
        await Sentry.captureException(exception, stackTrace: stackTrace);
      },
    );
  }
}
