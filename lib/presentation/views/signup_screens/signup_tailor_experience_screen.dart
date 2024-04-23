import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_business_details_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_widgets/image_screen_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpTailorExperienceScreen extends ConsumerWidget {
  static const String routeName = "signup_tailor_experience";

  const SignUpTailorExperienceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageScreenWidget(
      title: 'tailor_experience_title',
      subtitle: 'tailor_experience_subtitle',
      image: AppAssets.tailorExperienceImage,
      isLogo: true,
      buttons: [
        SizedBox(
          height: 48.h,
          width: 327.w,
          child: PrimaryButton(
            color: context.theme.colorTheme.buttonColor,
            text: Text(
              getTranslated('continue', context),
              style: AppTextstyle.bodyTextStyle(
                  color: context.theme.colorTheme.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              Navigation.pushNamed(SignUpBusinessDetailsScreen.routeName);
            },
          ),
        ),
      ],
    );
  }
}
