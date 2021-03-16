import 'package:base_project_template/dependency/injection_config.dart';
import 'package:base_project_template/presentation/shared/base_widget.dart';
import 'package:flutter/material.dart';

import 'package:logging/logging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef ListenDelegate<S> = void Function(BuildContext context, S state);

abstract class BaseState<S, B extends Bloc<dynamic, S>, W extends StatefulWidget> extends State<W> {
  Logger get logger => Logger('BaseWidget#${identityHashCode(this)}');

  B bloc(BuildContext context) => BlocProvider.of<B>(context);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (BuildContext ctx) {
        final bloc = dependencyContainer!.get<B>();
        onBlocCreated(ctx, bloc);

        return bloc;
      },
      lazy: true,
      child: Builder(
        builder: (BuildContext ctx) {
          initParams(ctx);

          return buildWidget(ctx);
        },
      ),
    );
  }

  Widget stateObserver(
    BuildContext context,
    StateListener<S> stateListener, {
    ListenDelegate<S>? listenDelegate,
  }) {
    return BlocConsumer(
      cubit: bloc(context),
      builder: (BuildContext context, S state) => stateListener(state),
      listener: listenDelegate ?? _defaultListenDelegate,
    );
  }

  void _defaultListenDelegate(BuildContext context, S state) {}

  void onBlocCreated(BuildContext context, B bloc) {}

  void initParams(BuildContext context) {}

  Widget buildWidget(BuildContext context);
}
