import 'package:base_project/utils/test_case.dart';
import 'package:base_project/utils/test_list.dart';

import 'test_cases/home_screen_join_test_case.dart';
import 'test_cases/home_screen_out_test_case.dart';
import 'test_cases/home_screen_text_test_case.dart';

class HomeScreenTests extends TestList {
  HomeScreenTests._privateConstructor();

  static final HomeScreenTests _instance = HomeScreenTests._privateConstructor();

  static HomeScreenTests get instance => _instance;

  @override
  TestCase get joinCase => HomeScreenJoinTestCase();

  @override
  TestCase get outCase => HomeScreenOutTestCase();

  @override
  List<TestCase> get tests {
    return [
      HomeScreenTextTestCase(),
    ];
  }
}
