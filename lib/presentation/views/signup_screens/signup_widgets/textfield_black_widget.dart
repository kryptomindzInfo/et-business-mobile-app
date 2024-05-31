import 'package:etbank_business_app/constants/app_assets.dart';
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
        color: context.theme.colorTheme.businessDetailsContainer,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: context.theme.colorTheme.transparentToTeal),
      ),
      height: 35.h,
      child: TextFormField(
        onChanged: onChanged,
        style: AppTextstyle.bodyTextStyle(
            color: context.theme.colorTheme.whiteColor),
        decoration: InputDecoration(
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(28.0),
            // ),
            // contentPadding: const EdgeInsets.symmetric(
            //     // horizontal: 90.w,
            //     vertical: 9),
            contentPadding: const EdgeInsets.only(bottom: 13),
            // filled: true,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            // fillColor: AppColors.mateBlackColor,
            // prefixIconConstraints:
            //     BoxConstraints(maxHeight: 14.h, maxWidth: 14.w),
            hintText: hintText ?? getTranslated('search_country', context),
            hintStyle: AppTextstyle.bodyTextStyle(color: AppColors.grey),
            // prefixIcon: const Icon(
            //   Icons.search,
            //   color: AppColors.grey,
            // ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AppAssets.searchImage2x),
            )
            //  Image.asset(
            //   AppAssets.iconSearchBlack,
            //   color: Colors.white,
            // ),
            ),
      ),
    );
  }
}
