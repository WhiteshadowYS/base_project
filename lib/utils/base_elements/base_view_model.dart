import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

mixin BaseViewModel {
  Widget selector<VM, T>({
    required T Function() selector,
    required Widget Function(BuildContext, Widget? child) builder,
    Widget? child,
  }) {
    return Selector<VM, T>(
      selector: (ctx, vm) => selector(),
      builder: (BuildContext context, _, child) => builder(context, child),
      child: child,
    );
  }

  Widget consumer<T>({
    required Widget Function(BuildContext, Widget? child) builder,
    Widget? child,
  }) {
    return Consumer<T>(
      builder: (BuildContext context, _, child) => builder(context, child),
      child: child,
    );
  }
}
