import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
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
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    getTranslated("£1 ", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.tealColor),
                  ),
                  Text(
                    getTranslated("to ", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    getTranslated("xyz", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.tealColor),
                  ),
                ],
              ),
              description: SizedBox(
                height: 48.h,
                width: 327.w,
                child: PrimaryButton(
                  color: AppColors.yellowGreen,
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
      text1: 'Code hasn’t arrived? you can retry in 0:58',
      text1Color: AppColors.halfWhite,
      // text1: 'code_hasnt_arrived',
      // text1Color: AppColors.green,
      text2: '',
      // text2Color: AppColors.white,
      // text3: '',
    );
  }
}
