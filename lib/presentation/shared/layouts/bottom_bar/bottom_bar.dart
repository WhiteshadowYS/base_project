// import 'package:auto_route/auto_route.dart';
// import 'package:base_project/presentation/shared/layouts/bottom_bar/bottom_bar_item.dart';
// import 'package:flutter/material.dart';

// class BottomBar extends StatefulWidget {
//   final bool isOpened;
//   final Color color;
//   final AppRouter router;
//   final List<IBottomBarItem> items;
//   final Color enabledItemColor;
//   final Color disabledItemColor;

//   const BottomBar({
//     required this.isOpened,
//     required this.color,
//     required this.items,
//     required this.router,
//     required this.enabledItemColor,
//     required this.disabledItemColor,
//   });

//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   AppRouter get _router => getIt.get<AppRouter>();

//   @override
//   void initState() {
//     super.initState();
//     _router.delegate().addListener(listener);
//   }

//   void listener() => setState(() {});

//   @override
//   void dispose() {
//     super.dispose();
//     _router.delegate().removeListener(listener);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: AppColors.white,
//       child: SafeArea(
//         top: false,
//         bottom: widget.isOpened,
//         child: AnimatedContainer(
//           duration: AppData.durations.milliseconds200,
//           height: widget.isOpened ? AppData.settings.bottomBarHeight : 0.0,
//           decoration: BoxDecoration(
//             border: Border(
//               top: BorderSide(
//                 color: AppColors.background,
//               ),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: widget.items.map<Widget>((item) {
//               return BottomBarItem(
//                 isActive: item.pageRoute.path == _router.current?.path,
//                 enabledColor: widget.enabledItemColor,
//                 disabledColor: widget.disabledItemColor,
//                 svgImagePath: item.svgImagePath,
//                 route: item.pageRoute,
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
