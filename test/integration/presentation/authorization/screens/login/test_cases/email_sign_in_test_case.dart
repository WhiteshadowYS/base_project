import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
// import 'package:base_project/source/authorization/infrastructure/dto/email_sign_in_dto.dart';
import 'package:base_project/utils/test_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class EmailSignInTestCase implements TestCase {
  LoginScreenVM get vm => getIt<LoginScreenVM>();

  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();

    // vm.signInWithEmail(EmailSignInDto(
    //   email: 'tester@gmail.com',
    //   password: '123456Test',
    // ));

    await tester.pumpAndSettle();

    expect(find.byKey(const Key('HomeScreenKey')), findsOneWidget);
  }
}
