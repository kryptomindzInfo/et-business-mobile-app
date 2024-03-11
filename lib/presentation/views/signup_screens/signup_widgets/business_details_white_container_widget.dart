import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDetailsWhiteContainerWidet extends ConsumerWidget {
  final String title;
  final Widget? icon;
  final VoidCallback? onTap;
  final Color? titleTextColor;
  final String? labelText;
  final String? labelText;
  const BusinessDetailsWhiteContainerWidet(
      {super.key,
      required this.title,
      this.icon,
      this.onTap,
      this.titleTextColor,
      this.labelText,
      this.labelText});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null)
                Text(
                  labelText ?? 'country',
                  style: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelText ?? 'country',
                    style: AppTextstyle.bodyTextStyle(color: AppColors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 16.sp,
                            color: titleTextColor ?? AppColors.grey),
                      ),
                      if (icon != null)
                        if (icon != null) icon!
                    ],
                  )!
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
