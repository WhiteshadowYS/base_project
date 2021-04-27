import 'package:flutter/material.dart';
import 'package:base_project/common/presentors/loader/i_loader_presenter.dart';
import 'package:base_project/config/injection_config.dart';

class AppPaginationBuilder<T> extends StatefulWidget {
  final List<T> items;
  final VoidCallback loadFunction;
  final VoidCallback initialLoading;
  final Widget Function(BuildContext, T, int) builder;
  final void Function(ScrollController)? onScroll;

  AppPaginationBuilder({
    required this.items,
    required this.builder,
    required this.loadFunction,
    required this.initialLoading,
    this.onScroll,
  });

  @override
  _AppPaginationBuilderState<T> createState() => _AppPaginationBuilderState<T>();
}

class _AppPaginationBuilderState<T> extends State<AppPaginationBuilder<T>> {
  ILoaderPresenter get _loader => dependencyContainer!.get<ILoaderPresenter>();
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(listener);
  }

  void listener() {
    if (widget.onScroll != null) {
      widget.onScroll!(_controller);
    }
    if (_controller.offset == _controller.position.maxScrollExtent && !_loader.loaderNotifier.value) {
      widget.loadFunction();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty) {
      widget.initialLoading();
    }

    return RefreshIndicator(
      onRefresh: () async => widget.initialLoading(),
      child: SizedBox(
        child: ListView.builder(
          controller: _controller,
          itemCount: widget.items.length,
          padding: const EdgeInsets.only(bottom: 100.0),
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return widget.builder(context, widget.items[index], index);
          },
        ),
      ),
    );
  }
}
