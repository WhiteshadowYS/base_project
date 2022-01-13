import 'package:base_project/config/config.dart';
import 'package:base_project/presentation/authorization/screens/login/login_screen_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<LoginScreenVM>();

    return InkWell(
      onTap: () => viewModel.increment(),
      child: Container(
        height: 40.0,
        width: 240.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.primary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: viewModel.selector<LoginScreenVM, dynamic>(
          selector: () => viewModel.counter,
          builder: (_, __) {
            return Text(
              '${viewModel.counter2}',
            );
          },
        ),
      ),
    );
  }
}
