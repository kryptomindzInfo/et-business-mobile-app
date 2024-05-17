import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget(
      {Key? key,
      @required this.color,
      @required this.text,
      @required this.onPressed,
      this.image,
      this.borderRadius,
      this.height,
      this.minwidth})
      : super(key: key);

  final Color? color;
  final Widget? text;
  final Widget? image;
  final VoidCallback? onPressed;
  final double? borderRadius;
  final double? height;
  final double? minwidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius ?? 48),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image!,
            10.spaceX,
            text!,
          ],
        ),
      ),
    );
  }
}
