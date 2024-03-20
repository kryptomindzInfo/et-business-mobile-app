import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
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
      this.bottomContentPadding})
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText ?? "",
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'WorkSans',
                color: Color(0xff191D23)),
            textAlign: textAlign ?? TextAlign.start,
          ),
          const SizedBox(
            height: 5,
          ),
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
            decoration: InputDecoration(
              fillColor: fillColor ?? Colors.white,
              filled: true,
              hintText: hintText ?? '',
              errorText: errorText,
              contentPadding: EdgeInsets.only(
                left: 10,
                bottom: bottomContentPadding ?? 0,
              ),
              hintStyle: hintStyle ??
                  AppTextstyle.bodyTextStyle(color: const Color(0xff191D23)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: focusColor ?? AppColors.transparent),
              ),
              border: InputBorder.none,
            ),
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
