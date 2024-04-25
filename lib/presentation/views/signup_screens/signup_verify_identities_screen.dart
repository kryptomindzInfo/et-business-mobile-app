import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/director_button_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../common_widgets/app_common_appbar.dart';
import 'signup_verify_users_identity_screen.dart';
import 'signup_widgets/business_details_white_container_widget.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';

class SignUpVerifyIdentitiesScreen extends ConsumerWidget {
  static const String routeName = "signup_verify_identities";

  const SignUpVerifyIdentitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: false,
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated('verify_identities_title', context),
                  description:
                      getTranslated('verify_identities_subtitle', context),
                  // imageicon: AppAssets.arrowLeft,
                ),
                35.spaceY,
                Text(
                  getTranslated('todo', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.greywhite, fontSize: 16.sp),
                ),
                16.spaceY,
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: context.theme.colorTheme.borderColor)),
                  child: Column(
                    children: [
                      BusinessDetailsWhiteContainerWidet(
                        image: AppAssets.contactpermission,
                        title: getTranslated('james_fork', context),
                        titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: context.theme.colorTheme.normalTextColor,
                        ),
                        icon: DirectorButtonWidget(
                          title: getTranslated('verify', context),
                          buttonColor: AppColors.tealColor.withOpacity(0.3),
                          titleTextStyle: AppTextstyle.bodyTextStyle(
                              color: AppColors.tealColor, fontSize: 16.sp),
                        ),
                        onTap: () {},
                        borderColor: Colors.transparent,
                      ),
                      BusinessDetailsWhiteContainerWidet(
                        image: AppAssets.contactpermission,
                        title: getTranslated('james_fork', context),
                        titleTextStyle: AppTextstyle.bodyTextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: context.theme.colorTheme.normalTextColor,
                        ),
                        icon: DirectorButtonWidget(
                          title: getTranslated('verify', context),
                          buttonColor: AppColors.tealColor.withOpacity(0.3),
                          titleTextStyle: AppTextstyle.bodyTextStyle(
                              color: AppColors.tealColor, fontSize: 16.sp),
                        ),
                        // titleTextColor:
                        onTap: () {},
                        borderColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: context.theme.colorTheme.buttonColor,
                text: Text(
                  getTranslated('confirm', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.buttonTitleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, SignUpVerifyUserIdentityScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
