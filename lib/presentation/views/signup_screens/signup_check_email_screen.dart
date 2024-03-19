import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/globals/enums.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/params/pincode_screen_args.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_otp_code_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/image_screen_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_widgets/primary_button.dart';

class SignUpCheckEmailScreen extends ConsumerWidget {
  static const String routeName = "signup_check_email";

  const SignUpCheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageScreenWidget(
        title: 'check_email_title',
        subtitle: 'check_email_subtitle',
        image: AppAssets.checkEmailImage,
        buttons: [
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: PrimaryButton(
              color: AppColors.primaryColor,
              text: Text(
                getTranslated('go_to_inbox', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ),
          16.spaceY,
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: PrimaryButton(
              color: AppColors.primaryColor.withOpacity(0.5),
              text: Text(
                getTranslated('enter_code_manually', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigation.pushNamed(SignUpOtpCodeScreen.routeName,
                    arguments: PinCodeScreenArgs(
                        value: 'hello@gmail.com',
                        type: PinCodeDestinationType.email));
              },
            ),
          ),
        ]);
  }
}
