import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirectorButtonWidget extends ConsumerWidget {
  final String title;
  final Color? buttonColor;
  final TextStyle? titleTextStyle;
  final String? leadingImage;
  final EdgeInsetsGeometry? padding;
  final double? width;

  const DirectorButtonWidget(
      {super.key,
      required this.title,
      this.buttonColor,
      this.titleTextStyle,
      this.leadingImage,
      this.padding,
      this.width});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.tealColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(8.0),
        child: Row(
          children: [
            if (leadingImage != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset(
                  leadingImage ?? '',
                  height: 12,
                  width: 17,
                ),
              ),
            Text(
              title,
              style: titleTextStyle ??
                  AppTextstyle.bodyTextStyle(
                      color: AppColors.white, fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
