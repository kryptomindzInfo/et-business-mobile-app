import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      @required this.color,
      @required this.text,
      @required this.onPressed,
      this.borderRadius,
      this.height,
      this.minwidth})
      : super(key: key);
  final Color? color;
  final Widget? text;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final double? height;
  final double? minwidth;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: minwidth,
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      color: color,
      disabledElevation: 0,
      // disabledColor: Get.theme.focusColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 48)),
      elevation: 0,
      child: text,
    );
  }
}
