import 'package:base_project/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'presentation/authorization/screens/login/login_tests.dart';
import 'presentation/home/dialogs/home_dialog/home_dialog_tests.dart';
import 'presentation/home/screens/home_screen/home_screen_tests.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Application Tests', (WidgetTester tester) async {
    app.main();

    await LoginScreenTests.instance.execute(tester);
    await HomeScreenTests.instance.execute(tester);
  });

  testWidgets('Application Tests', (WidgetTester tester) async {
    app.main();

    await LoginScreenTests.instance.execute(tester);
    await HomeDialogTests.instance.execute(tester);
  });
}
