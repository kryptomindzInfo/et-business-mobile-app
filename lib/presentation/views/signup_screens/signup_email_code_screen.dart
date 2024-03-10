import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/globals/enums.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/params/pincode_screen_args.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_type_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_password_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignUpOtpCodeScreen extends ConsumerWidget {
  static const String routeName = "signup_otp_code";
  final PinCodeScreenArgs params;
  const SignUpOtpCodeScreen({super.key, required this.params});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBody: true,
      body: BackgroundImageWidget(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('signup_email_code_title', context),
                description:
                    "Code Send to ${params.value} unless you already have accounts",
                // "${getTranslated('signup_email_code_subtitle', context)} ${params.value}",
              ),
              32.spaceY,
              PinCodeTextField(
                  appContext: context,
                  length: 6,
                  obscureText: false,
                  autoFocus: true,
                  autoDisposeControllers: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.center,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 8),
                    fieldHeight: 48.h,
                    fieldWidth: 34.w,
                    borderWidth: 1,
                    activeFillColor: AppColors.white,
                    selectedFillColor: AppColors.white,
                    inactiveFillColor: AppColors.white,
                    activeColor: AppColors.tealColor,
                    selectedColor: AppColors.tealColor,
                    inactiveColor: AppColors.white,
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  enablePinAutofill: true,
                  onCompleted: (value) {
                    if (params.type == PinCodeDestinationType.email) {
                      Navigation.pushNamed(SignUpBusinessTypeScreen.routeName);
                    } else {
                      Navigation.pushNamed(SignUpCreatePassword.routeName);
                    }
                  }),
              20.spaceY,
              Text(
                getTranslated('resend_code', context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16.sp, color: AppColors.white),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: getTranslated('already_have_account', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: getTranslated('login', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
