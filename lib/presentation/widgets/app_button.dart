import 'package:flutter/material.dart';
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/utils/res/style/app_gradients.dart';
import 'package:base_project/utils/res/style/default_colors.dart';

enum AppButtonType {
  Default,
  White,
  GradientBorder,
  WhiteBorder,
  Disabled,
}

class AppButton extends StatefulWidget {
  final Widget child;
  final double radius;
  final double width;
  final double height;
  final Alignment alignment;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final void Function() onTap;
  final Color? color;
  final IFocusManager? focusManager;
  final AppButtonType buttonType;
  final AppButtonType Function()? getButtonType;

  AppButton({
    required this.child,
    required this.onTap,
    this.getButtonType,
    this.focusManager,
    this.radius = 8.0,
    this.height = 50.0,
    this.width = double.infinity,
    this.alignment = Alignment.center,
    this.margin = const EdgeInsets.symmetric(horizontal: 15.0),
    this.padding = const EdgeInsets.all(0.0),
    this.color,
    this.buttonType = AppButtonType.Default,
  });

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  AppButtonType get _buttonType => widget.getButtonType != null ? widget.getButtonType!() : widget.buttonType;

  @override
  void initState() {
    super.initState();
    widget.focusManager?.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focusManager?.removeListener(listener);
  }

  void listener() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _getButtonColor,
        gradient: _getButtonGradient,
        borderRadius: BorderRadius.circular(widget.radius),
        border: _getButtonBorder,
      ),
      height: widget.height,
      width: widget.width,
      margin: widget.margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(widget.radius),
          onTap: () {
            if (_buttonType != AppButtonType.Disabled) {
              widget.onTap();
            }
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            alignment: widget.alignment,
            padding: widget.padding,
            child: widget.child,
          ),
        ),
      ),
    );
  }

  Border? get _getButtonBorder {
    if (_buttonType == AppButtonType.WhiteBorder) {
      return Border.all(
        color: DefaultAppColors.white,
      );
    }

    if (_buttonType == AppButtonType.GradientBorder) {
      return Border.all(
        color: DefaultAppColors.mainPurple,
      );
    }
  }

  Color? get _getButtonColor {
    if (_buttonType == AppButtonType.Disabled) {
      return DefaultAppColors.greyTwo;
    }

    if (_buttonType == AppButtonType.White) {
      return DefaultAppColors.white;
    }

    return widget.color;
  }

  LinearGradient? get _getButtonGradient {
    if (_buttonType == AppButtonType.Default) {
      return AppGradient.mainGradient;
    }
  }
}
