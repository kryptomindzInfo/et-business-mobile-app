import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../globals/enums.dart';
import '../../../navigation/navigation.dart';
import '../../../navigation/params/pincode_screen_args.dart';
import 'signup_otp_code_screen.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpCreatePassCodeScreen extends ConsumerWidget {
  static const String routeName = "signup_create_passcode";

  const SignUpCreatePassCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        // extendBody: true,

        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('create_passcode_title', context),
                description: getTranslated('create_passcode_subtitle', context),
                imageicon: AppAssets.arrowLeft,
              ),
              220.spaceY,
              TextFormField(
                onChanged: (value) {
                  ref.read(signUpStateProvider).setPassCode(value);
                  // if (value.length == 4) {
                  //   Navigation.pushNamed(SignUpEnablePushNotifScreen.routeName);
                  // }
                },
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: getTranslated('create_passcode_title', context),
                  hintStyle: AppTextstyle.bodyTextStyle(
                      color: AppColors.grey, fontSize: 16.sp),
                ),
                obscureText: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,

        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: AppColors.baseGreenColor,
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigation.pushNamed(SignUpOtpCodeScreen.routeName,
                      arguments: PinCodeScreenArgs(
                          value: '+44 23476956789',
                          type: PinCodeDestinationType.otpForCreatePassCode));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
