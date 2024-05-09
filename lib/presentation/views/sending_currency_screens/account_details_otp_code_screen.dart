import 'package:etbank_business_app/constants/app_colors.dart';
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
    return OTPVerification(
      description: 'account_details_otp_text',
      onCompleted: (value) {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return VerifiedBottomSheetWidget(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    getTranslated("Youve_sent", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    getTranslated("£1 ", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.green),
                  ),
                  Text(
                    getTranslated("to ", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    getTranslated("xyz", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.green),
                  ),
                ],
              ),
              description: SizedBox(
                height: 48.h,
                width: 327.w,
                child: PrimaryButton(
                  color: AppColors.green,
                  text: Text(
                    getTranslated('payment_notif_title', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.mateBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        );
      },
      text1: 'code_hasnt_arrived',
      text1Color: AppColors.green,
      text2: 'you_can_retry_in_58',
      text2Color: AppColors.white,
      text3: '',
    );
  }
}
