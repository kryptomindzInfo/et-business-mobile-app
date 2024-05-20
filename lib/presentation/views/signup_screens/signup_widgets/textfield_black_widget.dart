import 'package:etbank_business_app/extensions/build_context.dart';
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
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: context.theme.colorTheme.borderColor)),
      height: 35.h,
      child: TextFormField(
        onChanged: onChanged,
        style: AppTextstyle.bodyTextStyle(
            color: context.theme.colorTheme.whiteColor),
        decoration: InputDecoration(
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(28.0),
          // ),
          contentPadding: const EdgeInsets.symmetric(
              // horizontal: 90.w,
              vertical: 9),
          // contentPadding: const EdgeInsets.only(bottom: 8),
          // filled: true,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          // fillColor: AppColors.mateBlackColor,
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
