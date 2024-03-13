import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_primary_reason_for_using_etbank_screen.dart';
import 'signup_widgets/primary_button.dart';

class SignUpEnableFaceIdScreen extends ConsumerWidget {
  static const String routeName = "signup_enable_face_id";

  const SignUpEnableFaceIdScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('enable_face_id_title', context),
                description: getTranslated('enable_face_id_subtitle', context),
                imageicon: AppAssets.arrowLeft,
              ),
              57.spaceY,
              Image.asset(
                AppAssets.enableFaceId,
                height: 306.h,
                width: 306.w,
              )
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: BottomAppBar(
                elevation: 0,
                height: 150.h,
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
                              SignPrimaryReasonForEtBankScreen.routeName,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
