import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
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
                Container(
                  // decoration: BoxDecoration(color: AppColors.red),
                  width: 295.w,
                  height: 38.h,
                  child: TextFormField(
                    onChanged: onChanged,
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.whiteColor),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: context.theme.colorTheme.transparentToTeal),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: context.theme.colorTheme.transparentToTeal),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: context.theme.colorTheme.transparentToTeal),
                        borderRadius: BorderRadius.circular(28.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 114.w,
                      ),
                      filled: true,

                      fillColor:
                          context.theme.colorTheme.businessDetailsContainer,
                      // prefixIconConstraints:
                      //     BoxConstraints(maxHeight: 14.h, maxWidth: 14.w),
                      hintText:
                          hintText ?? getTranslated('Search country', context),
                      hintStyle:
                          AppTextstyle.bodyTextStyle(color: AppColors.grey),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          AppAssets.searchImage2x,
                          height: 15,
                          width: 15,
                        ),
                      ),
                      // prefixIcon: Icon(
                      //   Icons.search,
                      //   color: context.theme.colorTheme.whiteColor,
                      // ),
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
                    getTranslated('Cancel', context),
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
