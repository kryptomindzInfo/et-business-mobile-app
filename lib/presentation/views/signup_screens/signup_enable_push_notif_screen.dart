import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_tailor_experience_screen.dart';
import 'signup_widgets/image_screen_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpEnablePushNotifScreen extends ConsumerWidget {
  static const String routeName = "signup_enable_push_notif";

  const SignUpEnablePushNotifScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageScreenWidget(
        title: 'enable_push_notif_title',
        subtitle: 'enable_push_notif_subtitle',
        image: AppAssets.ufoImage,
        buttons: [
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: PrimaryButton(
              color: AppColors.primaryColor,
              text: Text(
                getTranslated('enable_push_notification', context),
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
                getTranslated('not_now', context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigation.pushNamed(SignUpTailorExperienceScreen.routeName);
              },
            ),
          ),
        ]);
  }
}
