import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/show_account_details_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_textstyle.dart';
import '../../signup_screens/signup_widgets/primary_button.dart';

class TrustThisPayeeBottomSheetWidget extends ConsumerWidget {
  const TrustThisPayeeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 950,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                40.spaceY,
                const HeaderIconWithTitle(),
                Image.asset(
                  AppAssets.trustPayee,
                  height: 100.h,
                  width: 100.w,
                  color: Colors.yellow,
                ),
                54.spaceY,
                Text(
                  getTranslated('do_you_know_and_trust_this_payee', context),
                  style: AppTextstyle.headingTextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.white),
                ),
                58.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      getTranslated('gbp', context),
                      style: AppTextstyle.headingTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.white),
                    ),
                    4.spaceX,
                    Text(
                      getTranslated('01.00', context),
                      style: AppTextstyle.headingTextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: AppColors.yellowGreen),
                    ),
                  ],
                ),
                58.spaceY,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    getTranslated('unsure_about_payee', context),
                    style: AppTextstyle.headingTextStyle(
                      fontSize: 13,
                      color: AppColors.white,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                children: [
                  SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: PrimaryButton(
                      color: AppColors.yellowGreen,
                      text: Text(
                        getTranslated('no_go_back', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  8.spaceY,
                  SizedBox(
                    height: 48.h,
                    width: 327.w,
                    child: PrimaryButton(
                      color: AppColors.black,
                      text: Text(
                        getTranslated('yes_continue', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.yellowGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigation.pushNamed(
                            ShowAccountDetailsScreen.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
