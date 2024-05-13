import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      this.onSaved,
      this.onChanged,
      this.validator,
      this.keyboardType,
      this.initialValue,
      this.hintText,
      this.errorText,
      this.iconData,
      this.labelText,
      this.obscureText,
      this.suffixIcon,
      this.onSuffixIconTap,
      this.isFirst,
      this.isLast,
      this.style,
      this.hintStyle,
      this.textAlign,
      this.suffix,
      this.maxlength,
      this.readonly,
      this.prefixIcon,
      this.textInputAction,
      this.focusNode,
      this.autofocus,
      this.focusColor,
      this.controller,
      this.fillColor,
      this.bottomContentPadding,
      this.contentPadding,
      this.labelStyle,
      this.border})
      : super(key: key);

  final TextEditingController? controller;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final String? initialValue;
  final String? hintText;
  final String? errorText;
  final TextAlign? textAlign;
  final String? labelText;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final IconData? iconData;
  final bool? obscureText;
  final bool? isFirst;
  final bool? isLast;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final Widget? suffix;
  final int? maxlength;
  final bool? readonly;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Color? focusColor;
  final Color? fillColor;
  final double? bottomContentPadding;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? labelStyle;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59,
      width: 360.w,
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: labelText != null ? AppColors.white : null,
          border: border ??
              Border.all(color: context.theme.colorTheme.borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null) ...{
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
              child: Text(
                labelText ?? "",
                style: labelStyle ??
                    const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'WorkSans',
                        color: AppColors.black),
                textAlign: textAlign ?? TextAlign.start,
              ),
            )
          },
          TextFormField(
            controller: controller,
            autofocus: autofocus ?? false,
            focusNode: focusNode,
            textInputAction: textInputAction,
            readOnly: readonly ?? false,
            maxLength: maxlength,
            maxLines: keyboardType == TextInputType.multiline ? null : 1,
            key: key,
            keyboardType: keyboardType ?? TextInputType.text,
            onSaved: onSaved,
            onChanged: onChanged,
            validator: validator,
            style: style ?? const TextStyle(color: Colors.white),
            obscureText: obscureText ?? false,
            textAlign: textAlign ?? TextAlign.start,
            obscuringCharacter: '●',
            // cursorHeight: 30,

            decoration: InputDecoration(
                fillColor: fillColor ?? Colors.transparent,
                filled: true,

                // floatingLabelAlignment: FloatingLabelAlignment.start,
                // alignLabelWithHint: true,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                label: Text(
                  hintText ?? '',
                  style: hintStyle ??
                      AppTextstyle.bodyTextStyle(
                          color:
                              context.theme.colorTheme.headerDescriptionColor,
                          fontSize: 16),
                ),
                // hintText: hintText ?? '',
                errorText: errorText,
                suffixIcon: suffixIcon != null
                    ? InkWell(onTap: onSuffixIconTap, child: suffixIcon)
                    : null,
                contentPadding: contentPadding ??
                    EdgeInsets.only(
                      left: 15,
                      bottom: bottomContentPadding ?? 0,
                    ),
                hintStyle: hintStyle ??
                    AppTextstyle.bodyTextStyle(color: const Color(0xff191D23)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                constraints: const BoxConstraints(maxHeight: 200)),
          ),
        ],
      ),
    );
  }

  BorderRadius get buildBorderRadius {
    if (isFirst != null && isFirst!) {
      return const BorderRadius.vertical(top: Radius.circular(10));
    }
    if (isLast != null && isLast!) {
      return const BorderRadius.vertical(bottom: Radius.circular(10));
    }
    if (isFirst != null && !isFirst! && isLast != null && !isLast!) {
      return const BorderRadius.all(Radius.circular(0));
    }
    return const BorderRadius.all(Radius.circular(10));
  }

  double get topMargin {
    if ((isFirst != null && isFirst!)) {
      return 20;
    } else if (isFirst == null) {
      return 20;
    } else {
      return 0;
    }
  }

  double get bottomMargin {
    if ((isLast != null && isLast!)) {
      return 10;
    } else if (isLast == null) {
      return 10;
    } else {
      return 0;
    }
  }
}
