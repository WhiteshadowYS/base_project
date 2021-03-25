import 'package:lalee_mobile/utils/res/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lalee_mobile/presentation/layouts/bottom_bar/widgets/app_bottom_bar_item.dart';

class AppBottomBar extends StatelessWidget {
  final String selectedPage;
  final List<AppBottomBarItem> items;
  final void Function(String) gotoPage;

  const AppBottomBar({
    required Key key,
    required this.items,
    required this.selectedPage,
    required this.gotoPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: AppData.settings.bottomBarHeight.sp,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map<Widget>((item) {
            if (item.page != null && selectedPage == item.page) {
              return AppBottomBarItem(
                key: Key('[AppBottomBarItem][Active]'),
                icon: item.icon,
                isActive: true,
                page: item.page,
                onTap: () => gotoPage(item.page ?? ''),
              );
            }

            return AppBottomBarItem(
              key: Key('[AppBottomBarItem][${item.page}]'),
              icon: item.icon,
              page: item.page,
              onTap: () => gotoPage(item.page ?? ''),
            );
          }).toList(),
        ),
      ),
    );
  }
}
