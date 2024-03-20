import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/sending_currency_screens/account_details_otp_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_textstyle.dart';
import '../../../globals/enums.dart';
import '../../../navigation/navigation.dart';
import '../../../navigation/params/pincode_screen_args.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/header_icon_with_text.dart';
import '../signup_screens/signup_otp_code_screen.dart';
import '../signup_screens/signup_widgets/button_bottom_navigation_widget.dart';
import '../signup_screens/signup_widgets/primary_button.dart';
import 'sending_currency_widgets/show_account_details_widget.dart';

class ShowAccountDetailsScreen extends ConsumerWidget {
  static const String routeName = "SHOW_ACCOUNT_DETAILS";

  const ShowAccountDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('account_details', context),
                  imageicon: AppAssets.arrowLeft,
                ),
                45.spaceY,
                const ShowAccountDetailsWidget(
                  title: 'reference',
                  subTitle: 'et_bank',
                ),
                20.spaceY,
                const ShowAccountDetailsWidget(
                  title: 'arriving',
                  subTitle: 'today',
                ),
                20.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: const Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'amount',
                        subTitle: '£1',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'transfer_fee',
                        subTitle: 'no_fee',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'from',
                        subTitle: 'gbp',
                      ),
                    ],
                  ),
                ),
                20.spaceY,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white),
                  child: const Column(
                    children: [
                      ShowAccountDetailsWidget(
                        title: 'amount',
                        subTitle: 'xyz',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'account_type',
                        subTitle: 'individual',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'account',
                        subTitle: '£1',
                      ),
                      ShowAccountDetailsWidget(
                        title: 'from',
                        subTitle: 'abc',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: AppColors.green,
                text: Text(
                  getTranslated('send', context),
                  style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigation.pushNamed(AccountDetailsOTPCodeScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
