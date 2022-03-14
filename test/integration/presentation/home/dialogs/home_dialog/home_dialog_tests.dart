import 'package:base_project/utils/test_case.dart';
import 'package:base_project/utils/test_list.dart';

import 'test_cases/home_dialog_join_test_case.dart';
import 'test_cases/home_dialog_out_test_case.dart';
import 'test_cases/home_dialog_text_test_case.dart';

class HomeDialogTests extends TestList {
  HomeDialogTests._privateConstructor();

  static final HomeDialogTests _instance = HomeDialogTests._privateConstructor();

  static HomeDialogTests get instance => _instance;

  @override
  TestCase get joinCase => HomeDialogJoinTestCase();

  @override
  TestCase get outCase => HomeDialogOutTestCase();

  @override
  List<TestCase> get tests {
    return [
      HomeDialogTextTestCase(),
    ];
  }
}
