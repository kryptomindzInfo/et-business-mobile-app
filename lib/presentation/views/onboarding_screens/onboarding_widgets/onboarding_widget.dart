import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_screen.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_widgets/button_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_email_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:etbank_business_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../navigation/navigation.dart';
import '../../home_section/homes_screen.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isButtons;
  final String image;
  final Widget? widget;

  const OnboardingWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.isButtons = false,
      required this.image,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      body: Stack(
        children: [
          // Image.asset(
          //   AppAssets.appBg,
          //   fit: BoxFit.cover,
          //   width: 420.w,
          // ),
          20.spaceY,
          Padding(
            padding: EdgeInsets.only(top: 70.h),
            child: SizedBox(
              width: 420.w,
              height: 805.h,
              child: Image.asset(
                AppAssets.onboardingBg,
                fit: BoxFit.cover,
                width: 420.w,
                height: 391.h,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  130.spaceY,
                  SizedBox(
                    width: 293.w,
                    child: Text(
                      getTranslated(title, context),
                      style: AppTextstyle.headingTextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 317.w,
                    child: Text(
                      getTranslated(subtitle, context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: context.theme.colorTheme.yellowGreenColor,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                ],
              ),
              20.spaceY,
              SizedBox(
                  width: 390.w,
                  height: 391.h,
                  child: Image.asset(
                    image,
                    width: 388.w,
                    height: 388.h,
                  )),
            ],
          ),
          widget != null ? widget! : SizedBox()
        ],
      ),
    );
  }
}
