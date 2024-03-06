import 'package:flutter/material.dart';

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
      this.controller})
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
  final Widget? suffix;
  final int? maxlength;
  final bool? readonly;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool? autofocus;
  final Color? focusColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          labelText ?? "",
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'WorkSans',
              color: Color(0xff191D23)),
          textAlign: textAlign ?? TextAlign.start,
        ),
        //rgba(25, 29, 35, 1)
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
          // initialValue: initialValue ?? '',
          style: style ?? TextStyle(color: Colors.white),
          obscureText: obscureText ?? false,
          textAlign: textAlign ?? TextAlign.start,
          obscuringCharacter: '●',
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText ?? '',
              suffix: suffix,
              errorText: errorText,
              //   iconData: iconData,
              contentPadding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              hintStyle: hintStyle ??
                  const TextStyle(
                      fontSize: 14,
                      fontFamily: 'WorkSans',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff191D23)),
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                // borderSide: BorderSide(color: AppColors.textFieldBorderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                // borderSide: BorderSide(
                //     color: focusColor ?? AppColors.textFieldBorderColor),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                // borderSide: BorderSide(color: AppColors.textFieldBorderColor),
              )),
        ),
      ],
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
