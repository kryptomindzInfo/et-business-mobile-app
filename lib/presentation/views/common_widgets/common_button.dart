import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';

class CommonButton extends ConsumerWidget {
  final String? title;
  final VoidCallback? onpress;
  final double? width;
  final Color? mainButtonColor;
  final Color? titleColor;
  final double? height;
  final double? borderRadius;
  const CommonButton(
      {super.key,
      this.onpress,
      this.title,
      this.width,
      this.mainButtonColor,
      this.titleColor,
      this.height,
      this.borderRadius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: height ?? 38,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 70),
            color: mainButtonColor ?? AppColors.black),
        child: Center(
          child: Text(
            title!,
            style: AppTextstyle.headingTextStyle(
                color: titleColor ?? AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
