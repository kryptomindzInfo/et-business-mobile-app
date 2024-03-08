import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/terms_and_condition_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../common_widgets/header_icon_with_text.dart';

class ConfirmationBottomSheet extends ConsumerWidget {
  const ConfirmationBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 700,
        color: AppColors.black,
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: HeaderIconWithTitle(
                      title: getTranslated("confirmation", context),
                      description: getTranslated("charge", context),
                      imageicon: AppAssets.arrowLeft,
                      edgeinsets: EdgeInsets.only(top: 20),
                    ),
                  ),
                  30.spaceY,
                  Container(
                    height: 129,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: AppColors.primaryColor),
                    child: Container(
                      margin: EdgeInsets.only(left: 25, right: 25, top: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                getTranslated("monthly_sub", context),
                                style: AppTextstyle.roboto(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                getTranslated("-£100", context),
                                style: AppTextstyle.headingTextStyle(
                                    color: AppColors.black.withOpacity(0.5),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          20.spaceY,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                getTranslated("monthly_sub", context),
                                style: AppTextstyle.roboto(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                getTranslated("-£100 Free", context),
                                style: AppTextstyle.headingTextStyle(
                                    color: AppColors.black.withOpacity(0.5),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 30.spaceY,
                  const TermsAndConditionsText(),
                  20.spaceY,
                  PrimaryButton(
                      height: 38,
                      minwidth: 288,
                      color: AppColors.primaryColor,
                      text: Text(getTranslated("continue", context),
                          style: AppTextstyle.headingTextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onPressed: () {})
                ])));
  }
}
