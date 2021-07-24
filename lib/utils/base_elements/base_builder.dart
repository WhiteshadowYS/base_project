import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBuilder<B extends Bloc> extends StatelessWidget {
  final Widget Function(BuildContext) builder;
  final void Function(BuildContext, dynamic)? listener;

  const BaseBuilder({
    required this.builder,
    this.listener,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, dynamic>(
      bloc: getIt<B>(),
      listener: listener ?? (_, __) {},
      builder: (BuildContext ctx, dynamic state) {
        return builder(ctx);
      },
    );
  }
}
