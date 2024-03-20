import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_primary_reason_for_using_etbank_screen.dart';
import 'signup_widgets/image_screen_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpEnableFaceIdScreen extends ConsumerWidget {
  static const String routeName = "signup_enable_face_id";

  const SignUpEnableFaceIdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageScreenWidget(
      title: 'enable_face_id_title',
      subtitle: 'enable_face_id_subtitle',
      image: AppAssets.enableFaceId,
      buttons: [
        SizedBox(
          height: 48.h,
          width: 327.w,
          child: PrimaryButton(
            color: AppColors.primaryColor,
            text: Text(
              getTranslated('use_face_id', context),
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
            color: AppColors.white,
            text: Text(
              getTranslated('not_now', context),
              style: AppTextstyle.bodyTextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              Navigation.pushNamed(
                SignUpPrimaryReasonForEtBankScreen.routeName,
              );
            },
          ),
        ),
      ],
    );
  }
}
