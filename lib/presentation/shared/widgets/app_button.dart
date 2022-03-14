import 'package:base_project/config/ui_manger.dart';
import 'package:flutter/material.dart';

enum AppButtonType {
  Content,
  Disabled,
}

class AppButton<LoaderType> extends StatefulWidget {
  final Widget child;
  final Widget? loaderWidget;
  final double? width;
  final double? height;
  final Alignment alignment;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final void Function() onTap;
  final Color disabledColor;

  /// Type of the button
  final AppButtonType _buttonType;

  /// Border radius (fixed for [AppButtonType])
  final double _radius;

  /// Color of the button (fixed for [AppButtonType])
  final Color? _color;

  /// Color of the button (fixed for [AppButtonType])
  final Gradient? _gradient;

  /// For [AppButtonType.Description]
  final Border? _border;

  AppButton.content({
    required this.onTap,
    required this.child,
    this.height,
    this.width,
    this.alignment = Alignment.center,
    this.margin = const EdgeInsets.all(0.0),
    this.padding = const EdgeInsets.all(0.0),
    this.loaderWidget,
    this.disabledColor = Colors.grey,
    final double? radius,
    final Color? color,
    final Border? border,
  })  : _buttonType = AppButtonType.Content,
        _color = color ?? Colors.transparent,
        _radius = radius ?? 8.0,
        _gradient = null,
        _border = border;

  @override
  _AppButtonState<LoaderType> createState() => _AppButtonState<LoaderType>();
}

class _AppButtonState<LoaderType> extends State<AppButton<LoaderType>> {
  @override
  Widget build(BuildContext context) {
    if (widget.loaderWidget != null) {
      return UIManager.loader.loaderBuilder<LoaderType>(
        loader: _getDisabledButton,
        child: _getContentButton,
      );
    }
    return _getContentButton;
  }

  Widget get _getDisabledButton {
    return Container(
      decoration: BoxDecoration(
        color: widget.disabledColor,
        borderRadius: BorderRadius.circular(widget._radius),
        border: _getButtonBorder,
        gradient: widget._gradient,
      ),
      margin: widget.margin,
      width: widget.width,
      height: widget.height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(widget._radius),
          onTap: () {},
          child: Container(
            width: widget.width,
            height: widget.height,
            alignment: widget.width != null ? widget.alignment : null,
            padding: widget.padding,
            child: widget.loaderWidget,
          ),
        ),
      ),
    );
  }

  Widget get _getContentButton {
    return Container(
      decoration: BoxDecoration(
        color: widget._color,
        borderRadius: BorderRadius.circular(widget._radius),
        border: _getButtonBorder,
        gradient: widget._gradient,
      ),
      margin: widget.margin,
      width: widget.width,
      height: widget.height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(widget._radius),
          onTap: () {
            if (widget._buttonType != AppButtonType.Disabled) {
              widget.onTap();
            }
          },
          child: Container(
            width: widget.width,
            height: widget.height,
            alignment: widget.width != null ? widget.alignment : null,
            padding: widget.padding,
            child: widget.child,
          ),
        ),
      ),
    );
  }

  Border? get _getButtonBorder => widget._border;
}
