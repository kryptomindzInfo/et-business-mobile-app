import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioButtonWidget extends ConsumerWidget {
  final bool isSelected;
  final Function()? onTap;

  const CustomRadioButtonWidget(
      {super.key, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 20.h,
        width: 20.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.baseGreenColor,
            width: 2,
          ),
        ),
        child: isSelected
            ? Container(
                margin: const EdgeInsets.all(2),
                height: 18.h,
                width: 18.w,
                decoration: BoxDecoration(
                  color: AppColors.baseGreenColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.baseGreenColor,
                    width: 2,
                  ),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
