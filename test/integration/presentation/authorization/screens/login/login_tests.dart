import 'package:base_project/utils/test_case.dart';
import 'package:base_project/utils/test_list.dart';

import 'test_cases/email_sign_in_test_case.dart';
import 'test_cases/increment_test_case.dart';
import 'test_cases/login_screen_join_case.dart';

class LoginScreenTests extends TestList {
  LoginScreenTests._privateConstructor();

  static final LoginScreenTests _instance = LoginScreenTests._privateConstructor();

  static LoginScreenTests get instance => _instance;

  @override
  TestCase get joinCase => LoginScreenJoinCase();

  @override
  TestCase get outCase => EmailSignInTestCase();

  @override
  List<TestCase> get tests {
    return [
      IncrementTestCase(),
    ];
  }
}
