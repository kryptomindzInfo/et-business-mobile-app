import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_enable_push_notif_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';

class SignUpEnterPassCodeScreen extends ConsumerWidget {
  static const String routeName = "signup_enter_passcode";

  const SignUpEnterPassCodeScreen({super.key});

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
                title: getTranslated('ET_bank_passcode', context),
                spaceBtw: 4,
                description:
                    getTranslated('used_for_your_personal_account', context),
                // imageicon: AppAssets.arrowLeft,
              ),
              120.spaceY,

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
                    Navigation.pushNamed(SignUpEnablePushNotifScreen.routeName);
                  }),
              // TextFormField(
              //   onChanged: (value) {
              //     ref.read(signUpStateProvider).setPassCode(value);
              //     if (value.length == 4) {
              //       Navigation.pushNamed(SignUpEnablePushNotifScreen.routeName);
              //     }
              //   },
              //   autofocus: true,
              //   decoration: InputDecoration(
              //     border: InputBorder.none,
              //     hintText: getTranslated('. . . . ', context),
              //     hintStyle: AppTextstyle.bodyTextStyle(
              //         color: AppColors.grey, fontSize: 80.sp),
              //   ),
              //   obscureText: true,
              //   textAlign: TextAlign.center,
              //   style: const TextStyle(
              //     color: Colors.white,
              //     fontSize: 30,
              //   ),
              //   keyboardType: TextInputType.number,
              // ),
            ],
          ),
        ),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                height: 100.h,
                color: AppColors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          getTranslated('forgot_passcode', context),
                          style: AppTextstyle.bodyTextStyle(
                            color: context.theme.colorTheme.primaryColor,
                            fontSize: 16.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
