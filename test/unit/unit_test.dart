import 'package:base_project/config/configs/test_config.dart' as conf;
import 'package:flutter_test/flutter_test.dart';

void main() {
  conf.TestConfig().init();

  test('Main', () async {
    // await AppBloc.instance.addWith(
    //   AuthorizationEvent.signIn(EmailSignInContract()),
    // );
  });
}
