import 'package:base_project/utils/test_case.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class TestList {
  List<TestCase> get tests;

  Future<void> execute(WidgetTester tester) async {
    await joinCase.execute(tester);

    for (TestCase testCase in tests) {
      await testCase.execute(tester);
    }

    await outCase.execute(tester);
  }

  TestCase get joinCase;
  TestCase get outCase;
}
