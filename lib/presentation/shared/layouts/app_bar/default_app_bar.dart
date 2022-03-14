// import 'package:flutter/material.dart';
// import 'package:lalee_mobile/utils/res/app_data.dart';
// import 'package:lalee_mobile/config/injection_config.dart';
// import 'package:lalee_mobile/presentation/widgets/app_logo.dart';
// import 'package:lalee_mobile/common/presentors/side_menu/i_side_menu_presenter.dart';

// class DefaultAppBar extends StatelessWidget {
//   final Color color;
//   final Widget? actionWidget;

//   DefaultAppBar({
//     this.color = AppColors.white,
//     this.actionWidget,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       bottom: false,
//       child: Container(
//         padding: const EdgeInsets.all(15.0),
//         child: Row(
//           children: [
//             Material(
//               color: Colors.transparent,
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(50.0),
//                 onTap: () => getIt.get<ISideMenuPresenter>().invertState(),
//                 child: Icon(
//                   Icons.menu,
//                   size: 50.0,
//                   color: color,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 15.0),
//             Spacer(),
//             actionWidget ?? SizedBox(),
//             const SizedBox(width: 15.0),
//             AppLogo(size: 24.0, color: color),
//           ],
//         ),
//       ),
//     );
//   }
// }
