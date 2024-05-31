import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../constants/app_assets.dart';

class OTPVerification extends ConsumerWidget {
  final String description;
  final Function(String) onCompleted;
  final String? text1;
  final Color? text1Color;
  final String? text2;
  final Color? text2Color;
  final String? text3;

  const OTPVerification({
    super.key,
    required this.description,
    required this.onCompleted,
    this.text1,
    this.text1Color,
    this.text2,
    this.text2Color,
    this.text3,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColors.transparent,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('signup_email_code_title', context),
                spaceBtw: 5,
                description: getTranslated(description, context),
                // imageicon: AppAssets.arrowLeft,
                etBankLogo: true,
              ),
              32.spaceY,
              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                autoFocus: true,
                autoDisposeControllers: false,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.start,
                textStyle: TextStyle(color: context.theme.colorTheme.otpText),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  fieldOuterPadding: const EdgeInsets.only(right: 16),
                  fieldHeight: 48.h,
                  fieldWidth: 34.w,
                  borderWidth: 1,
                  activeFillColor: context.theme.colorTheme.otpBlock,
                  selectedFillColor: context.theme.colorTheme.otpBlock,
                  inactiveFillColor: context.theme.colorTheme.otpBlock,
                  activeColor: context.theme.colorTheme.transparentToTeal,
                  selectedColor: context.theme.colorTheme.transparentToTeal,
                  inactiveColor: context.theme.colorTheme.transparentToTeal,
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                enablePinAutofill: true,
                onCompleted: onCompleted,
              ),
              10.spaceY,
              if (text1 != null)
                Text(
                  getTranslated(text1 ?? 'resend_code', context),
                  style: AppTextstyle.bodyTextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color:
                        text1Color ?? context.theme.colorTheme.normalTextColor,
                  ),
                ),
              28.spaceY,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: getTranslated(
                          text2 ?? 'already_have_account', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16.sp,
                        color: text2Color ??
                            context.theme.colorTheme.headerDescriptionColor,
                      ),
                    ),
                    // TextSpan(
                    //   text: getTranslated(text3 ?? 'login', context),
                    //   style: AppTextstyle.bodyTextStyle(
                    //     fontSize: 16.sp,
                    //     color: context.theme.colorTheme.primaryColor,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
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
