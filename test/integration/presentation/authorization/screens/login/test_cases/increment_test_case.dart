import 'package:base_project/config/config.dart';
import 'package:base_project/utils/test_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_presentor.dart';

class IncrementTestCase implements TestCase {
  LoginScreenVM get vm => getIt<LoginScreenVM>();
  LoginScreenPresenter get presenter => getIt<LoginScreenPresenter>();

  @override
  Future<void> execute(tester) async {
    vm.increment();
    await tester.pumpAndSettle();
    vm.increment();
    await tester.pumpAndSettle();

    expect(find.text('counter: 2'), findsOneWidget);
    expect(presenter.counter, 2);
  }
}
