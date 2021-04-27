import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:base_project/presentation/widgets/content_button.dart';
import 'package:base_project/utils/res/app_data.dart';
import 'package:base_project/utils/res/style/default_colors.dart';

class EditButton extends StatelessWidget {
  final VoidCallback onTap;

  EditButton({
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ContentButton(
      onTap: onTap,
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Edit',
            style: AppData.textStyles.body(
              color: DefaultAppColors.black,
            ),
          ),
          SizedBox(width: 8.0),
          SvgPicture.asset(
            AppData.svg.edit,
            width: 24.0,
            height: 24.0,
            color: DefaultAppColors.black,
          ),
        ],
      ),
    );
  }
}
