import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Loader extends ChangeNotifier {
  static Loader get instance => getIt<Loader>();

  final Map<Type, Widget> loaderBuilders;

  Loader({
    required this.loaderBuilders,
  });

  final List<Type> _loaders = [];

  List<Type> get loaders => _loaders;

  void start<T>() {
    _loaders.add(T);
    notifyListeners();
  }

  void stop<T>() {
    _loaders.remove(T);
    notifyListeners();
  }

  bool isLoading<T>() => _loaders.contains(T);

  Widget loaderBuilder<T>({
    required Widget loader,
    required Widget child,
  }) {
    return ChangeNotifierProvider.value(
      value: instance,
      builder: (ctx, _) {
        return Consumer<Loader>(
          builder: (ctx, _, __) {
            if (isLoading<T>()) {
              return loader;
            }
            return child;
          },
        );
      },
    );
  }
}
