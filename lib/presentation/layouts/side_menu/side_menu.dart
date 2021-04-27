import 'package:flutter/material.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/common/presentors/side_menu/i_side_menu_presenter.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/app_router.gr.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/common/presentors/side_menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  final bool isOpened;
  final Duration duration;
  final List<MenuItem> items;

  SideMenu({
    required this.isOpened,
    required this.duration,
    required this.items,
  });

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  AppRouter get _router => dependencyContainer!.get<AppRouter>();
  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();
  ISideMenuPresenter get _sideMenuPresenter => dependencyContainer!.get<ISideMenuPresenter>();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: widget.duration,
      width: widget.isOpened ? AppData.settings.sideMenuWidth : 0,
      color: DefaultAppColors.black,
      child: Stack(
        children: [
          Positioned.directional(
            textDirection: TextDirection.ltr,
            top: 15.0,
            start: 15.0,
            child: SafeArea(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50.0),
                  onTap: () => _sideMenuPresenter.close(),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Icon(
                      Icons.close,
                      size: 30.0,
                      color: DefaultAppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.items.map<Widget>((item) {
              return _button(item.title, function: item.function);
            }).toList()
              ..insert(
                0,
                _button(
                  dictionary.data.sideMenu.title ?? '',
                  color: DefaultAppColors.grey,
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget _button(String title, {Future<void> Function(AppRouter)? function, Color? color}) {
    late final Widget child;
    final Widget widget = Container(
      alignment: AlignmentDirectional.centerStart,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 57.0,
      width: AppData.settings.sideMenuWidth,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF2B2237),
          ),
        ),
      ),
      child: Text(
        title,
        style: AppData.textStyles.body(
          color: color ?? DefaultAppColors.white,
          scale: _screenManager.scale,
        ),
      ),
    );

    if (function != null) {
      child = InkWell(
        onTap: () => function(_router),
        child: widget,
      );
    } else {
      child = widget;
    }

    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    );
  }
}
