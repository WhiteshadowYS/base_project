import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../config.dart';
import 'app_config.dart';

class Config extends AppConfig {
  String _name = '';

  @override
  String get name => _name;

  @override
  int get pagination => int.tryParse(dotenv.get('PAGINATION')) ?? 10;

  @override
  String get baseUrl {
    return dotenv.get('BASE_URL');
  }

  @override
  String get sentryUrl {
    return dotenv.get('SENTRY_URL');
  }

  @override
  bool get useMock => dotenv.get('USE_MOCK') == 'true';

  @override
  Future<void> init() async {
    await super.init();
    final flavor = await initFlavor();
    _name = flavor;
    await initEnv(flavor);
    initDependencies(this);
  }

  Future<void> initEnv(String flavor) async {
    try {
      await dotenv.load(fileName: '.local/.env.$flavor');
    } catch (e) {
      print('Dot Env load catch error, $e');
      await dotenv.load(fileName: '.local/.env.develop');
    }
  }

  Future<String> initFlavor() async {
    WidgetsFlutterBinding.ensureInitialized();

    String? flavor;

    try {
      flavor = await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
    } catch (e) {
      flavor = 'develop';
      print('FLAVOR FROM CATCH ERROR $flavor');
    }

    print('FLAVOR: $flavor');

    return flavor ?? 'develop';
  }
}
