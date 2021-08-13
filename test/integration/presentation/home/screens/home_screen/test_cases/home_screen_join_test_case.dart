import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:base_project/utils/test_case.dart';

class HomeScreenJoinTestCase implements TestCase {
  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('HomeScreenKey')), findsOneWidget);
  }
}
