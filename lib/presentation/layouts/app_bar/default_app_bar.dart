import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/common/presentors/side_menu/i_side_menu_presenter.dart';

class DefaultAppBar extends StatelessWidget {
  final Color color;
  final Widget? actionWidget;

  DefaultAppBar({
    this.color = DefaultAppColors.white,
    this.actionWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(50.0),
                onTap: () => dependencyContainer!.get<ISideMenuPresenter>().invertState(),
                child: Icon(
                  Icons.menu,
                  size: 50.0,
                  color: color,
                ),
              ),
            ),
            const SizedBox(width: 15.0),
            AppLogo(size: 24.0, color: color),
            Spacer(),
            actionWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }
}
