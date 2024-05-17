import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_create_passcode_otp_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../constants/app_colors.dart';
import '../../../navigation/navigation.dart';
import '../../../providers/signup_provider.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpCreatePassCodeScreen extends ConsumerWidget {
  static const String routeName = "signup_create_passcode";

  const SignUpCreatePassCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('create_passcode_title', context),
                // description: getTranslated('create_passcode_subtitle', context),
                // imageicon: AppAssets.arrowLeft,
              ),
              220.spaceY,
              PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  autoFocus: true,
                  autoDisposeControllers: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textStyle:
                      TextStyle(color: context.theme.colorTheme.blackAndWhite),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 8),
                    fieldHeight: 48.h,
                    fieldWidth: 34.w,
                    borderWidth: 0,
                    activeFillColor:
                        context.theme.colorTheme.transparentToColor,
                    selectedFillColor:
                        context.theme.colorTheme.transparentToColor,
                    inactiveFillColor:
                        context.theme.colorTheme.transparentToColor,
                    activeColor: AppColors.transparent,
                    selectedColor: AppColors.transparent,
                    inactiveColor: context.theme.colorTheme.transparentToColor,
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  enablePinAutofill: true,
                  onCompleted: (value) {
                    Navigation.pushNamed(
                        SignUpCreatePassCodeOTPCodeScreen.routeName);
                  }),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.transparent,
        // bottomNavigationBar: ButtonBottomNavigationWidget(
        //   children: [
        //     SizedBox(
        //       height: 48.h,
        //       width: 327.w,
        //       child: PrimaryButton(
        //         color: context.theme.colorTheme.buttonColor,
        //         text: Text(
        //           getTranslated('continue', context),
        //           style: AppTextstyle.bodyTextStyle(
        //               color: context.theme.colorTheme.blackColor,
        //               fontSize: 16,
        //               fontWeight: FontWeight.w500),
        //         ),
        //         onPressed: () {
        //           Navigation.pushNamed(
        //               SignUpCreatePassCodeOTPCodeScreen.routeName);
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
