import 'package:flutter/material.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';

abstract class BaseState<ViewModel extends BaseViewModel, W extends StatefulWidget> extends State<W> {
  ViewModel viewModel = getIt<ViewModel>();

  Widget selector<T>({
    required T Function() selector,
    required Widget Function(BuildContext, Widget? child) builder,
    Widget? child,
  }) {
    return viewModel.selector<ViewModel, T>(
      selector: selector,
      builder: builder,
      child: child,
    );
  }

  Widget consumer({
    required Widget Function(BuildContext, Widget? child) builder,
    Widget? child,
  }) {
    return viewModel.consumer<ViewModel>(
      builder: builder,
      child: child,
    );
  }
}
