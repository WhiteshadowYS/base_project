import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:base_project/utils/test_case.dart';
import 'package:base_project/presentation/home/screens/home_screen/home_screen_vm.dart';

class HomeDialogJoinTestCase implements TestCase {
  HomeScreenVM get viewModel => getIt<HomeScreenVM>();

  @override
  Future<void> execute(tester) async {
    await tester.pumpAndSettle();
    viewModel.homeDialog();
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('HomeDialogKey')), findsOneWidget);
  }
}
