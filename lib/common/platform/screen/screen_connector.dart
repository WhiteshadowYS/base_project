// import 'package:flutter/material.dart';

// import 'i_screen_manager.dart';

// class ScreenConnector extends StatelessWidget {
//   final IScreenManager screenManager;
//   final Widget Function(BuildContext, Widget) builder;
//   final Widget? child;

//   ScreenConnector({
//     required this.builder,
//     required this.screenManager,
//     this.child,
//   });

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       screenManager.updateScreen(context);
//     });

//     return builder(context, child ?? SizedBox());
//   }
// }
