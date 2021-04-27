import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Center(
          child: AppLogo(),
        ),
      ),
    );
  }
}
