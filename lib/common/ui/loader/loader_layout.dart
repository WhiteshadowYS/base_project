part of 'i_loader.dart';

class LoaderLayout extends StatelessWidget {
  final Widget child;
  final ILoader loaderPresenter;

  LoaderLayout({required this.child, required this.loaderPresenter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        ValueListenableBuilder<bool>(
          valueListenable: loaderPresenter.loaderNotifier,
          builder: (BuildContext context, bool val, _) {
            if (!val) return Container();

            return loaderPresenter.loaderWidget;
          },
        ),
      ],
    );
  }
}
