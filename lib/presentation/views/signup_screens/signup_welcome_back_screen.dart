import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_enter_passcode_screen.dart';
import 'signup_widgets/image_screen_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpWelcomeBackScreen extends ConsumerWidget {
  static const String routeName = "signup_welcome_back";

  const SignUpWelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageScreenWidget(
        title: 'welcome_back_title',
        subtitle: 'welcome_back_subtitle',
        image: AppAssets.welcomeBackImage,
        isLogo: false,
        buttons: [
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: PrimaryButton(
              color: AppColors.black,
              text: Text(
                getTranslated('yes_confirm', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigation.pushNamed(SignUpEnterPassCodeScreen.routeName);
              },
            ),
          ),
          16.spaceY,
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: PrimaryButton(
              color: AppColors.white,
              text: Text(
                getTranslated('no_not_me', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {},
            ),
          ),
        ]);
  }
}
