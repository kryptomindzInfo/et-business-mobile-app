import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchButtonWidget extends ConsumerWidget {
  final bool value;
  final String title;
  final TextStyle? titleTextStyle;
  final void Function(bool?)? onChanged;

  const SwitchButtonWidget(
      {super.key,
      required this.value,
      required this.title,
      required this.onChanged,
      this.titleTextStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        16.spaceX,
        SizedBox(
          width: 240.h,
          child: Text(
            title,
            style: titleTextStyle ??
                AppTextstyle.bodyTextStyle(
                    color: AppColors.white, fontSize: 16.sp),
            overflow: TextOverflow.clip,
          ),
        ),
        8.spaceX,
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.baseGreenColor,
        ),
      ],
    );
  }
}
