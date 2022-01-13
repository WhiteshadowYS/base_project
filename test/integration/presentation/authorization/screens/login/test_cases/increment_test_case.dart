import 'package:base_project/config/config.dart';
import 'package:base_project/utils/test_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';

class IncrementTestCase implements TestCase {
  LoginScreenVM get vm => getIt<LoginScreenVM>();

  @override
  Future<void> execute(tester) async {
    vm.increment();
    await tester.pumpAndSettle();
    vm.increment();
    await tester.pumpAndSettle();

    expect(find.text('counter: 2'), findsOneWidget);
  }
}
