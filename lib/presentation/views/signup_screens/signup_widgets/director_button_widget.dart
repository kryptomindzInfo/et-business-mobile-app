import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/globals/button_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirectorButtonWidget extends ConsumerWidget {
  final String title;
  final Color? buttonColor;
  final TextStyle? titleTextStyle;
  const DirectorButtonWidget(
      {super.key, required this.title, this.buttonColor, this.titleTextStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor ?? AppColors.tealColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: titleTextStyle ??
              AppTextstyle.bodyTextStyle(
                  color: AppColors.white, fontSize: 16.sp),
        ),
      ),
    );
  }
}
