import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxWidget extends ConsumerWidget {
  final bool checkBoxValue;
  final String title;
  final void Function(bool?)? onChanged;

  const CheckBoxWidget({
    super.key,
    required this.checkBoxValue,
    required this.title,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Checkbox(
          value: checkBoxValue,
          onChanged: onChanged,
          activeColor: AppColors.baseGreenColor,
          checkColor: AppColors.black,
        ),
        8.spaceX,
        SizedBox(
          width: 250.h,
          child: Text(
            title,
            style: AppTextstyle.bodyTextStyle(
                color: AppColors.white, fontSize: 16.sp),
            overflow: TextOverflow.clip,
          ),
        ),
      ],
    );
  }
}
