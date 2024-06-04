import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_textstyle.dart';
import '../../../resources/localization/language_constrants.dart';
import '../common_widgets/primary_button.dart';
import 'sending_currency_widgets/verified_bottom_sheet_widget.dart';

class AccountDetailsOTPCodeScreen extends ConsumerWidget {
  static const String routeName = "Account_Details_Code_OTP";

  const AccountDetailsOTPCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: OTPVerification(
        description: 'account_details_otp_text',
        onCompleted: (value) {
          showModalBottomSheet(
            backgroundColor: AppColors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.all(20),
                child: VerifiedBottomSheetWidget(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getTranslated("Youve_sent", context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Text(
                        getTranslated("£1 ", context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: AppColors.darkIndigo),
                      ),
                      Text(
                        getTranslated("to ", context),
                        style: AppTextstyle.bodyTextStyle(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        getTranslated("xyz", context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.darkIndigo),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  description: SizedBox(
                    height: 44.h,
                    width: 327.w,
                    child: PrimaryButton(
                      color: true
                          ? context.theme.colorTheme.buttonColor
                          : context.theme.colorTheme.buttonDisabledColor,
                      text: Text(
                        getTranslated('payment_notif_title', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: AppColors.mateBlackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        Navigation.pushNamed(BaseBottomNavBar.routeName);
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
        text1: 'Code hasn’t arrived? you can retry in 0:58',
        text1Color: context.theme.colorTheme.whiteColor,
        // text1: 'code_hasnt_arrived',
        // text1Color: AppColors.green,
        text2: '',
        // text2Color: AppColors.white,
        // text3: '',
      ),
    );
  }
}
