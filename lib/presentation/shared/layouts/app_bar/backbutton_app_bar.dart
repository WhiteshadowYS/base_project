// import 'package:flutter/material.dart';
// import 'package:lalee_mobile/config/app_router.gr.dart';
// import 'package:lalee_mobile/config/injection_config.dart';
// import 'package:lalee_mobile/utils/res/app_data.dart';

// class BackButtonAppBar extends StatelessWidget {
//   final String title;
//   final VoidCallback? callback;
//   final Color? color;
//   final Widget? actionWidget;

//   BackButtonAppBar({
//     required this.title,
//     this.callback,
//     this.color,
//     this.actionWidget,
//   });

//   AppRouter get _router => getIt.get<AppRouter>();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//       height: 60.0,
//       child: Stack(
//         children: [
//           Center(
//             child: Text(
//               title,
//               style: AppData.textStyles.headline(),
//             ),
//           ),
//           if (actionWidget != null)
//             Positioned.directional(
//               textDirection: Directionality.of(context),
//               end: 0.0,
//               top: 0.0,
//               child: actionWidget!,
//             ),
//           Positioned.directional(
//             textDirection: Directionality.of(context),
//             start: 0.0,
//             top: 0.0,
//             child: InkWell(
//               borderRadius: BorderRadius.circular(50.0),
//               splashColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               onTap: callback ?? _router.pop,
//               child: SizedBox(
//                 height: 50.0,
//                 width: 50.0,
//                 child: Icon(
//                   Icons.arrow_back_ios,
//                   size: 28.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
