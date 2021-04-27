import 'package:flutter/material.dart';
import 'package:base_project/common/logic/focus/focus_manager.dart' as fm;
import 'package:base_project/common/logic/focus/i_focus_manager.dart';
import 'package:base_project/common/presentors/screen/i_screen_manager.dart';
import 'package:base_project/config/injection_config.dart';
import 'package:base_project/utils/res/app_data.dart';

enum AppTextFieldType {
  Default,
  Password,
  Dark,
}

class AppTextField extends StatefulWidget {
  final fm.FocusKey focusKey;
  final IFocusManager focusManager;
  final void Function(String)? onSubmitted;
  final String? Function(String)? validator;

  final String? initialValue;
  final String? labelText;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextInputType? inputType;

  final AppTextFieldType textFieldType;
  final void Function(String) onChange;
  final bool isRequired;

  AppTextField({
    required this.focusKey,
    required this.focusManager,
    required this.onChange,
    this.isRequired = false,
    this.initialValue,
    this.textStyle,
    this.onSubmitted,
    this.labelText,
    this.hintText,
    this.hintTextStyle,
    this.inputType = TextInputType.text,
    this.validator,
    this.textFieldType = AppTextFieldType.Default,
  }) : super(key: Key(focusKey.value + 'AppTextField'));

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final TextEditingController _textEditingController = TextEditingController();
  IScreenManager get _screenManager => dependencyContainer!.get<IScreenManager>();

  bool obscure = false;
  bool isSaved = false;
  String error = '';
  late final TextStyle textStyle;
  late final TextStyle hintStyle;

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      _textEditingController.text = widget.initialValue!;
    }

    if (widget.textFieldType == AppTextFieldType.Password) {
      obscure = true;
    }

    textStyle = widget.textStyle ??
        AppData.textStyles.body(
          color: widget.textFieldType == AppTextFieldType.Dark ? DefaultAppColors.black : DefaultAppColors.white,
          scale: _screenManager.scale,
        );
    hintStyle = widget.hintTextStyle ??
        AppData.textStyles.body(
          color: widget.textFieldType == AppTextFieldType.Dark ? DefaultAppColors.black : DefaultAppColors.white,
          scale: _screenManager.scale,
        );

    widget.focusManager.addKey(widget.focusKey);
    widget.focusKey.focusNode.addListener(listener);
    widget.focusManager.addListener(listener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focusKey.focusNode.removeListener(listener);

    widget.focusManager.removeListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        children: [
          Container(
            height: 50.0,
            margin: const EdgeInsets.only(bottom: 32.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: _getBorderColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 4.0),
                TextFormField(
                  key: Key(widget.focusKey.value),
                  obscureText: obscure,
                  onEditingComplete: onEditingEnd,
                  focusNode: widget.focusKey.focusNode,
                  controller: _textEditingController,
                  keyboardType: widget.inputType,
                  style: textStyle,
                  onChanged: onChange,
                  onFieldSubmitted: (String arg) {
                    if (widget.onSubmitted != null) {
                      widget.onSubmitted!(arg);
                    }
                  },
                  cursorColor: DefaultAppColors.pinkyLight,
                  cursorHeight: 20.0,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon: _getSuffixWidget,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    alignLabelWithHint: true,
                    labelText: widget.labelText,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: widget.hintText,
                    hintStyle: hintStyle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      if (error != '' && isSaved)
                        Expanded(
                          child: Text(
                            error,
                            style: AppData.textStyles.footnote(
                              color: DefaultAppColors.error,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (widget.isRequired)
            Positioned(
              top: 10.0,
              right: 5.0,
              child: Text(
                '*',
                style: AppData.textStyles.body(
                  color: DefaultAppColors.error,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget? get _getSuffixWidget {
    if (widget.textFieldType == AppTextFieldType.Password) {
      return SizedBox(
        width: 24.0,
        height: 24.0,
        child: IconButton(
          onPressed: () => setState(() => obscure = !obscure),
          icon: Icon(
            obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          ),
          color: Colors.white,
        ),
      );
    }

    return null;
  }

  Color get _getBorderColor {
    if (error != '' && isSaved) {
      return DefaultAppColors.error;
    }

    if (widget.focusKey.focusNode.hasFocus) {
      return DefaultAppColors.pinkyLight;
    }

    if (widget.textFieldType == AppTextFieldType.Dark) {
      return DefaultAppColors.grey;
    }

    return DefaultAppColors.white;
  }

  void listener() => onChange(_textEditingController.text);

  void onChange(String? arg) {
    widget.onChange(arg ?? '');
    if (widget.validator != null) {
      if (arg == '' || arg == null) {
        error = '';
        isSaved = false;

        setState(() {});
        return;
      }

      final String? _error = widget.validator!(arg);

      if (_error != null && _error != error) {
        error = _error;
        widget.focusManager.notifiListeners();
      } else if (_error == null && error != '') {
        error = '';
        widget.focusManager.notifiListeners();
      }
      isSaved = true;
    }

    if (arg == '' || error != '') {
      widget.focusManager.changeKeyOpeningStatus(
        status: true,
        currentFocusKeyValue: widget.focusKey.value,
      );
    }
    setState(() {});
  }

  void onEditingEnd() {
    if (_textEditingController.text != '') {
      final bool status = error != '';
      isSaved = true;

      widget.focusManager.changeKeyOpeningStatus(
        status: status,
        currentFocusKeyValue: widget.focusKey.value,
      );
    }

    widget.focusManager.nextFocus(
      context: context,
      currentFocusKeyValue: widget.focusKey.value,
    );
  }
}
