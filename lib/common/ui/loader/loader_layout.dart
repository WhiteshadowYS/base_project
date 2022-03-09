import 'package:base_project/common/ui/loader/loader.dart';
import 'package:base_project/config/config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoaderLayout extends StatefulWidget {
  final Widget child;

  LoaderLayout({
    required this.child,
  });

  @override
  State<LoaderLayout> createState() => _LoaderLayoutState();
}

class _LoaderLayoutState extends State<LoaderLayout> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: getIt<Loader>(),
      builder: (context, snapshot) {
        return Stack(
          children: [
            widget.child,
            Consumer<Loader>(
              builder: (ctx, loader, _) {
                Widget? loaderWidget;

                for (Type type in loader.loaders) {
                  if (loader.loaderBuilders.containsKey(type)) {
                    loaderWidget = loader.loaderBuilders[type];
                    break;
                  }
                }

                return Center(
                  child: loaderWidget ?? SizedBox(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
