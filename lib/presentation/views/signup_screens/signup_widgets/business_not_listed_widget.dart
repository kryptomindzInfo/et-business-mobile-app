import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessNotListedWidet extends ConsumerWidget {
  final String title;

  final VoidCallback? onTap;
  final Color? titleTextColor;
  final TextStyle? tilteStyle;
  final String? image;

  const BusinessNotListedWidet(
      {super.key,
      required this.title,
      this.onTap,
      this.titleTextColor,
      this.tilteStyle,
      this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 500,
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Row(
              children: [
                if (image != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: Image.asset(
                      image!,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                Text(
                  title,
                  style: tilteStyle ??
                      AppTextstyle.bodyTextStyle(
                          fontSize: 16.sp,
                          color: titleTextColor ?? AppColors.blue,
                          fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
