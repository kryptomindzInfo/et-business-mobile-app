import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../../../resources/localization/language_constrants.dart';

class TextFieldBlackWidget extends ConsumerWidget {
  final String? hintText;
  final Function(String)? onChanged;
  const TextFieldBlackWidget({
    super.key,
    this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      // width: 300.w,
      height: 35.h,
      child: TextFormField(
        onChanged: onChanged,
        style: AppTextstyle.bodyTextStyle(color: AppColors.white),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 114.w,
          ),
          filled: true,

          fillColor: AppColors.mateBlackColor,
          // prefixIconConstraints:
          //     BoxConstraints(maxHeight: 14.h, maxWidth: 14.w),
          hintText: hintText ?? getTranslated('search_country', context),
          hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.grey,
          ),
          //  Image.asset(
          //   AppAssets.iconSearchBlack,
          //   color: Colors.white,
          // ),
        ),
      ),
    );
  }
}
