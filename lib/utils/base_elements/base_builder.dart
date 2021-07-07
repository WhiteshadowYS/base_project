import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBuilder<S, B extends Bloc<dynamic, S>> extends StatelessWidget {
  final Widget Function(BuildContext, S) builder;
  final void Function(BuildContext, S)? listener;

  const BaseBuilder({
    required this.builder,
    this.listener,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      bloc: getIt<B>(),
      listener: listener ?? (_, __) {},
      builder: builder,
    );
  }
}
