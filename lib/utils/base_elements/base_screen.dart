import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:base_project/config/config.dart';
import 'package:base_project/utils/base_elements/base_presenter.dart';
import 'package:base_project/utils/base_elements/base_view_model.dart';

abstract class BaseState<ViewModel extends BaseViewModel, Presenter extends BasePresenter, W extends StatefulWidget> extends State<W> {
  ViewModel viewModel = getIt<ViewModel>();
  Presenter presenter = getIt<Presenter>();

  Widget stateObserver<BloC extends Bloc>({required Widget Function(BuildContext) builder}) {
    return BlocConsumer(
      bloc: getIt<BloC>(),
      builder: (BuildContext context, _) => builder(context),
      listener: (_, __) {
        viewModel = getIt<ViewModel>();
        presenter = getIt<Presenter>();
      },
    );
  }
}
