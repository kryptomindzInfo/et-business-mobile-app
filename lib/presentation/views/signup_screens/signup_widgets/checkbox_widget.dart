import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends ConsumerWidget {
  final bool checkBoxValue;
  final String title;
  final TextStyle? titleTextStyle;
  final void Function(bool?)? onChanged;
  final Color? borderColor;

  const CheckBoxWidget(
      {super.key,
      required this.checkBoxValue,
      required this.title,
      required this.onChanged,
      this.titleTextStyle,
      this.borderColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Checkbox(
          value: checkBoxValue,
          onChanged: onChanged,

          activeColor: AppColors.green,
          // activeColor: context.theme.colorTheme.yellowGreenColor,
          checkColor: AppColors.black,
          side:
              BorderSide(color: borderColor ?? AppColors.grassGreen, width: 1),
        ),
        8.spaceX,
        SizedBox(
          width: 250.h,
          child: Text(
            title,
            style: titleTextStyle ??
                AppTextstyle.bodyTextStyle(
                    color: context.theme.colorTheme.whiteColor,
                    fontSize: 16.sp),
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }
}
