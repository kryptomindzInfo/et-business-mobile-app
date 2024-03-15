import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_colors.dart';

class CountryDropDownButtonWidget extends ConsumerWidget {
  final String title;
  final Function()? onTap;
  const CountryDropDownButtonWidget(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48.h,
          width: 80.h,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            height: 50.h,
            child: Center(
              child: Text(
                title,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
