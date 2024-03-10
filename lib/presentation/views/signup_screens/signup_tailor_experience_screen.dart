import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_details_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_widgets/primary_button.dart';

class SignUpTailorExperienceScreen extends ConsumerWidget {
  static const String routeName = "signup_tailor_experience";

  const SignUpTailorExperienceScreen({super.key});

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
                title: getTranslated('tailor_experience_title', context),
                description:
                    getTranslated('tailor_experience_subtitle', context),
              ),
              57.spaceY,
              Image.asset(
                AppAssets.tailorExperienceImage,
                height: 390.h,
                width: 390.w,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
        return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              height: 100.h,
              color: Colors.transparent,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 327.w,
                      child: PrimaryButton(
                        color: AppColors.primaryColor,
                        text: Text(
                          getTranslated('continue', context),
                          style: AppTextstyle.bodyTextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {
                          Navigation.pushNamed(
                              SignUpBusinessDetailsScreen.routeName);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
