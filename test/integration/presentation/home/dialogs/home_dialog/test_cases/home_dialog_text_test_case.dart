import 'package:flutter_test/flutter_test.dart';
import 'package:base_project/utils/test_case.dart';

class HomeDialogTextTestCase implements TestCase {
  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();
    expect(find.text('Hello'), findsOneWidget);
  }
}
