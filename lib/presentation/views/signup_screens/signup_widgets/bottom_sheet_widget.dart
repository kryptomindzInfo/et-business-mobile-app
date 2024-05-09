import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../resources/localization/language_constrants.dart';

class BottomSheetWidet extends ConsumerWidget {
  final String? hintText;
  final Function(String)? onChanged;
  final VoidCallback onCancelTap;
  final Widget bottomNavigationBody;

  const BottomSheetWidet(
      {super.key,
      this.hintText,
      required this.onChanged,
      required this.onCancelTap,
      required this.bottomNavigationBody});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      widthFactor: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 300.w,
                  height: 38.h,
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
                      hintText:
                          hintText ?? getTranslated('search_country', context),
                      hintStyle:
                          AppTextstyle.bodyTextStyle(color: AppColors.grey),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.greywhite,
                      ),
                      //  Image.asset(
                      //   AppAssets.iconSearchBlack,
                      //   color: Colors.white,
                      // ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: onCancelTap,
                  child: Text(
                    getTranslated('cancel', context),
                    style: AppTextstyle.bodyTextStyle(color: AppColors.blue),
                  ),
                ),
              ],
            ),
            32.spaceY,
            bottomNavigationBody,
          ],
        ),
      ),
    );
  }
}
