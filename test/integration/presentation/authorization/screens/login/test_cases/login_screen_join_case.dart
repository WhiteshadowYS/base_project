import 'package:base_project/utils/test_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginScreenJoinCase implements TestCase {
  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();
    await tester.pumpAndSettle();
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('LoginScreenKey')), findsOneWidget);
  }
}
