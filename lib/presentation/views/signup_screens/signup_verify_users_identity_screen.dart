import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_website_social_ecommerce_link_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_user_personal_details_screen.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/verify_user_identity_header_widget.dart';

class SignUpVerifyUserIdentityScreen extends ConsumerWidget {
  static const String routeName = "signup_verify_user_identity";

  const SignUpVerifyUserIdentityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: false,
        backgroundColor: AppColors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.tealColor,
                  borderRadius: BorderRadius.circular(28),
                  border: const Border(
                    left: BorderSide(width: 2, color: AppColors.white),
                    right: BorderSide(width: 2, color: AppColors.white),
                    bottom: BorderSide(width: 2, color: AppColors.white),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                  child: VerifyUserIdentityHeaderWidget(
                    title:
                        getTranslated('verify_james_forks_identity', context),
                    imageicon: AppAssets.arrowLeft,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.spaceY,
                    Text(
                      getTranslated('you_will_need_to_provide', context),
                      style: AppTextstyle.bodyTextStyle(
                          color: AppColors.greywhite, fontSize: 16.sp),
                    ),
                    10.spaceY,
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          BusinessDetailsWhiteContainerWidet(
                            image: AppAssets.contactpermission,
                            title: getTranslated('personal_details', context),
                            titleTextStyle: AppTextstyle.bodyTextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                            onTap: () {},
                          ),
                          BusinessDetailsWhiteContainerWidet(
                            image: AppAssets.contactpermission,
                            title: getTranslated('personal_address', context),
                            titleTextStyle: AppTextstyle.bodyTextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                            onTap: () {},
                          ),
                          BusinessDetailsWhiteContainerWidet(
                            image: AppAssets.contactpermission,
                            title: getTranslated('identity_documents', context),
                            titleTextStyle: AppTextstyle.bodyTextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          height: 150.h,
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: AppColors.primaryColor,
                text: Text(
                  getTranslated('confirm', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, SignUpUserPersonalDetailsScreen.routeName);
                },
              ),
            ),
            18.spaceY,
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
                  Navigator.pushNamed(
                      context, SignUpUserPersonalDetailsScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
