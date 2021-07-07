// import 'package:flutter/material.dart';

// class SideMenu extends StatefulWidget {
//   final bool isOpened;
//   final Duration duration;
//   final List<MenuItem> items;

//   SideMenu({
//     required this.isOpened,
//     required this.duration,
//     required this.items,
//   });

//   @override
//   _SideMenuState createState() => _SideMenuState();
// }

// class _SideMenuState extends State<SideMenu> {
//   AppRouter get _router => getIt.get<AppRouter>();
//   IScreenManager get _screenManager => getIt.get<IScreenManager>();
//   ISideMenuPresenter get _sideMenuPresenter => getIt.get<ISideMenuPresenter>();

//   @override
//   void initState() {
//     super.initState();
//     dictionary.addListener(listener);
//   }

//   @override
//   void dispose() {
//     dictionary.removeListener(listener);
//     super.dispose();
//   }

//   void listener() => setState(() {});

//   double get _sideMenuWidth {
//     final double sideMenuWidth = 100 + (MediaQuery.of(context).size.width / 5);

//     if (sideMenuWidth >= 200 && sideMenuWidth <= 400) return sideMenuWidth;

//     if (sideMenuWidth > 400) return 400;

//     return 200;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       curve: Curves.fastOutSlowIn,
//       duration: widget.duration,
//       width: widget.isOpened ? _sideMenuWidth : 0,
//       color: AppColors.black,
//       child: Stack(
//         children: [
//           Positioned.directional(
//             textDirection: Directionality.of(context),
//             top: 15.0,
//             start: 15.0,
//             child: SafeArea(
//               child: Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(50.0),
//                   onTap: () => _sideMenuPresenter.close(),
//                   child: SizedBox(
//                     width: 50.0,
//                     height: 50.0,
//                     child: Icon(
//                       Icons.close,
//                       size: 30.0,
//                       color: AppColors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: widget.items.map<Widget>((item) {
//               return _button(
//                 item.title,
//                 function: item.function,
//                 additionalWidget: item.additionalWidget,
//               );
//             }).toList()
//               ..insert(
//                 0,
//                 _button(
//                   dictionary.data.sideMenu.title ?? '',
//                   color: AppColors.grey,
//                 ),
//               ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _button(
//     String title, {
//     Future<void> Function(AppRouter)? function,
//     Color? color,
//     Widget? additionalWidget,
//   }) {
//     late final Widget child;
//     final Widget widget = Container(
//       alignment: AlignmentDirectional.centerStart,
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       height: 57.0,
//       width: _sideMenuWidth,
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(
//             color: Color(0xFF2B2237),
//           ),
//         ),
//       ),
//       child: Row(
//         children: [
//           Text(
//             title,
//             style: AppData.textStyles.body(
//               color: color ?? AppColors.white,
//               scale: _screenManager.scale,
//             ),
//           ),
//           if (additionalWidget != null) additionalWidget,
//         ],
//       ),
//     );

//     if (function != null) {
//       child = InkWell(
//         onTap: () => function(_router),
//         child: widget,
//       );
//     } else {
//       child = widget;
//     }

//     return SingleChildScrollView(
//       physics: NeverScrollableScrollPhysics(),
//       scrollDirection: Axis.horizontal,
//       child: Material(
//         color: Colors.transparent,
//         child: child,
//       ),
//     );
//   }
// }
