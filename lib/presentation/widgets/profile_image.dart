import 'dart:io';
import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:base_project/presentation/widgets/app_image_builder.dart';
import 'package:base_project/presentation/widgets/content_button.dart';
import 'package:base_project/utils/res/app_data.dart';

enum ProfileImageType {
  View,
  Edit,
}

class ProfileImage extends StatefulWidget {
  final String? link;
  final ProfileImageType type;
  final void Function(File)? uploadCallback;

  ProfileImage({
    this.link,
    this.type = ProfileImageType.View,
    this.uploadCallback,
  });

  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? image;

  void _imgFromCamera() async {
    final PickedFile? _file = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxHeight: 1024,
      maxWidth: 1024,
    );

    if (_file != null && widget.uploadCallback != null) {
      widget.uploadCallback!(File(_file.path));
      image = File(_file.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    late final Widget Function(Widget) builder;

    if (widget.type == ProfileImageType.Edit) {
      builder = (Widget child) {
        return ContentButton(
          onTap: () => _imgFromCamera(),
          child: child,
        );
      };
    } else {
      builder = (Widget child) {
        return child;
      };
    }

    return builder(
      Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(155.0),
              child: SizedBox(
                height: 155.0,
                width: 155.0,
                child: _imageBuilder(context),
              ),
            ),
            const SizedBox(height: 15.0),
            if (widget.type == ProfileImageType.Edit)
              Text(
                'Add/change',
                style: AppData.textStyles.buttons(
                  color: DefaultAppColors.mainPurple,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _imageBuilder(BuildContext context) {
    if (image != null) {
      return Image.file(
        image!,
        fit: BoxFit.cover,
      );
    }

    if (widget.type == ProfileImageType.View) {
      return AppImageBuilder(link: widget.link ?? '');
    }

    if (widget.type == ProfileImageType.Edit && widget.link != null && widget.link != '') {
      return AppImageBuilder(link: widget.link ?? '');
    }

    return DottedBorder(
      borderType: BorderType.Circle,
      strokeWidth: 5.0,
      dashPattern: [5, 5],
      color: DefaultAppColors.greyTwo,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: DefaultAppColors.background,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          AppData.svg.person,
          color: DefaultAppColors.greyTwo,
        ),
      ),
    );
  }
}
