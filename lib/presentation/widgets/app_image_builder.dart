import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:base_project/presentation/widgets/app_logo.dart';
import 'package:base_project/utils/res/style/default_colors.dart';

class AppImageBuilder extends StatelessWidget {
  final String link;
  final BoxFit fit;
  final double size;

  AppImageBuilder({
    required this.link,
    this.fit = BoxFit.cover,
    this.size = 42.0,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      imageUrl: link,
      placeholder: (BuildContext context, _) {
        return ColoredBox(
          color: DefaultAppColors.greyTwo,
          child: Center(
            child: AppLogo(size: size),
          ),
        );
      },
      errorWidget: (BuildContext context, _, __) {
        return ColoredBox(
          color: DefaultAppColors.greyTwo,
          child: Center(
            child: AppLogo(size: size),
          ),
        );
      },
    );
  }
}
