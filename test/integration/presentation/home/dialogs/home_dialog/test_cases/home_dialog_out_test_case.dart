import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/utils/test_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class HomeDialogOutTestCase implements TestCase {
  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();
    await UIManager.router.pop();
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('HomeScreenKey')), findsOneWidget);
  }
}
