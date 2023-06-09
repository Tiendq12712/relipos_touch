import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ReLiPostInput extends StatefulWidget {
  ReLiPostInput({
    Key? key,
    this.title,
    this.hint,
    this.security = false,
    this.controller,
    this.textInputType,
    this.validator,
    this.autovalidateMode,
    this.requireInput = '*',
    this.readOnly,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChanged,
    this.inputFormatters,
    this.onSubmit,
    this.enabled,
    this.colorBorder = Colors.black,
    this.borderRadius = 8,
    this.textStyle,
    this.helperText,
    this.action = TextInputAction.done,
    this.contentPadding,
    this.borderDisable,
    this.borderEnable,
    this.borderFocus,
    this.hintStyle,
    this.focusNode,
    this.textAlignInput,
    this.textAlignVertical,
    this.border,
    this.isDense = true,
    this.fillColor,
    this.expands,
  }) : super(key: key);

  final Widget? prefixIcon;
  Widget? suffixIcon;
  final bool? readOnly;
  final GestureTapCallback? onTap;
  final TextInputType? textInputType;
  final String? title;
  final String? hint;
  final TextEditingController? controller;
  bool security;
  final FormFieldValidator? validator;
  final AutovalidateMode? autovalidateMode;
  final String requireInput;
  final int? maxLines;
  final int? minLines;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String value)? onSubmit;
  final bool? enabled;
  final Color colorBorder;
  final double borderRadius;
  final TextStyle? textStyle;
  final String? helperText;
  final TextInputAction action;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? border;
  final InputBorder? borderEnable;
  final InputBorder? borderDisable;
  final InputBorder? borderFocus;
  final TextStyle? hintStyle;
  final FocusNode? focusNode;
  final TextAlign? textAlignInput;
  final TextAlignVertical? textAlignVertical;

  final Color? fillColor;
  final bool? expands;
  final bool? isDense;

  @override
  State<ReLiPostInput> createState() => _ReLiPosInput();
}

class _ReLiPosInput extends State<ReLiPostInput> {
  bool secure = false;

  @override
  void initState() {
    super.initState();
    if (widget.security) {
      if (widget.suffixIcon == null) {
        secure = true;
      }
      widget.suffixIcon ??= InkWell(
        onTap: () {
          setState(() {
            widget.security = !widget.security;
          });
        },
        child: Visibility(
          visible: widget.security,
          replacement: const Icon(Icons.visibility_off),
          child: const Icon(Icons.visibility),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (secure) {
      widget.suffixIcon = Padding(
        padding: const EdgeInsets.only(right: 10),
        child: InkWell(
          onTap: () {
            setState(() {
              widget.security = !widget.security;
            });
          },
          child: Visibility(
            visible: widget.security,
            replacement: const Icon(
              Icons.visibility_off,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.visibility,
              color: Colors.black,
            ),
          ),
        ),
      );
    }
    return TextFormField(
      textAlign: widget.textAlignInput ?? TextAlign.start,
      focusNode: widget.focusNode,
      textAlignVertical: widget.textAlignVertical,
      textInputAction: widget.action,
      autovalidateMode:
          widget.autovalidateMode ?? AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      obscureText: widget.security,
      keyboardType: widget.textInputType,
      style: widget.textStyle ?? const TextStyle(),
      decoration: InputDecoration(
        contentPadding:
            widget.contentPadding ?? const EdgeInsets.fromLTRB(10, 20, 10, 20),
        helperText: widget.helperText?.isNotEmpty == true ? ' ' : null,
        hintText: widget.hint ?? '',
        hintStyle: widget.hintStyle ?? const TextStyle(fontSize: 13),
        suffixIcon: widget.suffixIcon,
        suffixIconConstraints: const BoxConstraints(maxHeight: 20),
        prefixIcon: widget.prefixIcon,
        filled: true,
        isDense: widget.isDense,
        border: widget.border ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorBorder, width: 1),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
        enabledBorder: widget.borderEnable ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorBorder, width: 1),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
        disabledBorder: widget.borderDisable ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorBorder, width: 1),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
        fillColor: widget.fillColor ?? Colors.white,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        focusedBorder: widget.borderFocus ??
            OutlineInputBorder(
              borderSide: BorderSide(color: widget.colorBorder, width: 1),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
      ),
      expands: widget.expands ?? false,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      validator: widget.validator,
      onTap: widget.onTap,
      readOnly: widget.readOnly ?? false,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters ??
          (TextInputType.phone == widget.textInputType
              ? [LengthLimitingTextInputFormatter(10)]
              : null),
      onFieldSubmitted: (value) {
        widget.onSubmit?.call(value);
      },
    );
  }
}

class Validator {
  static String? userNameNotEmpty(username) {
    String value = username ?? "";
    if (value.isEmpty) {
      return "Vui lòng nhập tên đăng nhập";
    }
    return null;
  }

  static String? passNotEmpty(pass) {
    String value = pass ?? "";
    if (value.isEmpty) {
      return "Vui lòng nhập mật khẩu";
    }
    if (value.length < 8) {
      return "Mật khẩu phải ít nhất 8 ký tự";
    }
    return null;
  }

  static String? email(email) {
    String value = email;
    if (value.isEmpty) {
      return 'pleaseInsertEmail'.tr;
    }
    if (!RegExp(r"^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$")
        .hasMatch(value)) {
      return 'pleaseInsertEmailFormat'.tr;
    }
    return null;
  }
}
