import 'package:base_project/config/injection_config.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef StateListener<S> = Widget Function(S state);

abstract class BaseWidget<S, B extends Bloc<dynamic, S>> extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);

  Logger get logger => Logger('BaseWidget#${identityHashCode(this)}');

  B bloc(BuildContext context) => BlocProvider.of<B>(context);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (BuildContext context) {
        final bloc = dependencyContainer!.get<B>();
        onBlocCreated(context, bloc);

        return bloc;
      },
      lazy: false,
      child: Builder(
        builder: (BuildContext context) {
          initParams(context);

          return buildWidget(context);
        },
      ),
    );
  }

  Widget stateObserver(BuildContext context, StateListener<S> stateListener) {
    return BlocBuilder<B, S>(
      bloc: bloc(context),
      builder: (BuildContext context, S state) => stateListener(state),
    );
  }

  void onStateChanged(BuildContext context, S state) {}

  void onBlocCreated(BuildContext context, B bloc) {}

  void initParams(BuildContext context) {}

  Widget buildWidget(BuildContext context);
}
