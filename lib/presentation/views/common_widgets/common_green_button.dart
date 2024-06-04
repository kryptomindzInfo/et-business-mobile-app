import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';

class CommonGreenButton extends ConsumerWidget {
  final String? title;
  final String? imageIcon;
  final VoidCallback? onpress;
  final double? imageHeight;
  final double? imageWidth;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? height;
  final double? titleFontSize;
  final EdgeInsetsGeometry? padding;

  const CommonGreenButton(
      {super.key,
      this.title,
      this.imageIcon,
      this.onpress,
      this.imageHeight,
      this.color,
      this.iconColor,
      this.textColor,
      this.borderColor,
      this.borderRadius,
      this.height,
      this.padding,
      this.imageWidth,
      this.titleFontSize});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: FittedBox(
        child: Container(
          height: height ?? 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 17),
              border: Border.all(color: borderColor ?? AppColors.white),
              color: color ?? AppColors.primaryColor),
          margin: const EdgeInsets.only(right: 5),
          child: Center(
            child: Padding(
              padding: padding ?? const EdgeInsets.only(left: 11, right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (imageIcon != null)
                    Image.asset(
                      color: iconColor,
                      imageIcon!,
                      height: imageHeight ?? 25,
                      width: imageWidth ?? 25,
                    ),
                  if (title != null) 8.spaceX,
                  if (title != null)
                    Text(
                      title!,
                      style: AppTextstyle.bodyTextStyle(
                          color: textColor ?? AppColors.black,
                          fontSize: titleFontSize ?? 16,
                          fontWeight: FontWeight.w500),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
