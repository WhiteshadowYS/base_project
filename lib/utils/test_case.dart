import 'package:flutter_test/flutter_test.dart';

abstract class TestCase {
  Future<void> execute(WidgetTester tester);
}
