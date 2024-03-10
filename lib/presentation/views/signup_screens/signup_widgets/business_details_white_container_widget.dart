import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDetailsWhiteContainerWidet extends ConsumerWidget {
  final String title;
  final Widget icon;
  final VoidCallback? onTap;
  final Color? titleTextColor;

  const BusinessDetailsWhiteContainerWidet(
      {super.key,
      required this.title,
      required this.icon,
      this.onTap,
      this.titleTextColor});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16.sp, color: titleTextColor ?? AppColors.grey),
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }
}
