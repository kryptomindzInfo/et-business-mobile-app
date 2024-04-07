import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../common_widgets/app_common_appbar.dart';
import 'signup_where_you_conduct_business_screen.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpMaximumSinglePaymentPerMonthScreen extends ConsumerWidget {
  static const String routeName = "maximum_single_payment_made_per_month";

  const SignUpMaximumSinglePaymentPerMonthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: false,
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated(
                      'maximum_single_payment_per_month_title', context),
                  description: getTranslated(
                      'maximum_single_payment_per_month_subtitle', context),
                  // imageicon: AppAssets.arrowLeft,
                ),
                23.spaceY,
                BusinessDetailsWhiteContainerWidet(
                  labelText:
                      getTranslated('maximum_single_payment_in_GBP', context),
                  title: '100',
                  icon: Image.asset(
                    AppAssets.crossIconBlack,
                    height: 24.h,
                    width: 24.w,
                  ),
                  onTap: () {},
                ),
                8.spaceY,
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
                color: AppColors.primaryColor,
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, SignUpWhereYouConductBusinessScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
