import 'package:base_project/config/app_router.gr.dart';

class MenuItem {
  final String title;
  final Future<void> Function(AppRouter) function;

  MenuItem({
    required this.title,
    required this.function,
  });
}
