import 'package:base_project_template/application/bloc/app_bloc.dart';
import 'package:base_project_template/domain/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppTopBar extends StatefulWidget with PreferredSizeWidget {
  AppTopBar() : super(key: const Key('AppTopBar'));

  @override
  Size get preferredSize => Size(0.0, 60.0);

  @override
  _AppTopBarState createState() => _AppTopBarState();
}

class _AppTopBarState extends State<AppTopBar> {
  AppBarState appBarState = AppBarState.Closed;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: _listener,
      child: _getContent(),
    );
  }

  Widget _getContent() {
    switch (appBarState) {
      case AppBarState.Default:
        return AppBar(
          title: Text('Hello'),
        );

      case AppBarState.Closed:
        return SizedBox();
    }
  }

  void _listener(BuildContext context, AppState state) {
    state.maybeMap(
      initialized: (state) {
        if (state.appBarState != appBarState) {
          appBarState = state.appBarState;
          setState(() => appBarState = state.appBarState);
        }
      },
      orElse: () => AppBarState.Closed,
    );
  }
}
