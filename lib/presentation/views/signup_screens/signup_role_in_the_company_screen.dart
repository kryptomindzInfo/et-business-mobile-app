import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_type_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_textstyle.dart';
import '../../../constants/static_data/signup_screen_static_data.dart';
import '../../../navigation/navigation.dart';
import '../../../providers/signup_provider.dart';
import '../common_widgets/primary_button.dart';
import 'signup_create_passcode_screen.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/custom_radio_button_widget.dart';

class SignUpRoleInTheCompanyScreen extends ConsumerWidget {
  static const String routeName = "role_in_the_company";

  const SignUpRoleInTheCompanyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          etBankLogo: true,
        ),
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('role_in_the_company', context),
                // imageicon: AppAssets.arrowLeft,
              ),
              20.spaceY,
              SizedBox(
                height: 600.h,
                child: ListView.builder(
                    itemCount: companyRoles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: CustomCheckBox(
                                  // isSelected: index ==
                                  //     ref.watch(signUpStateProvider).selectedRole,
                                  // onTap: () => ref
                                  //     .read(signUpStateProvider)
                                  //     .changeRole(index),
                                  ),
                            ),
                            8.spaceX,
                            BusinessTypeWidget(
                              image: companyRoles[index]['image'],
                              title: getTranslated(
                                  companyRoles[index]['title'], context),
                              description: getTranslated(
                                  companyRoles[index]['subtitle'], context),
                              onPressed: () => ref
                                  .read(signUpStateProvider)
                                  .changeRole(index),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
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
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigation.pushNamed(SignUpCreatePassCodeScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
