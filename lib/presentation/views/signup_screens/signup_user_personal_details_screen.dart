import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/country_and_mobileno_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';
import '../common_widgets/app_common_appbar.dart';
import 'signup_user_home_address_screen.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/user_personal_details_widget.dart';

class SignUpUserPersonalDetailsScreen extends ConsumerWidget {
  static const String routeName = "signup_user_personal_details";

  const SignUpUserPersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpProvider = ref.read(signUpStateProvider);

    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderIconWithTitle(
                    title: getTranslated(
                        'james_forks_personal_details_title', context),
                    description: getTranslated(
                        'james_forks_personal_details_subtitle', context),
                    // imageicon: AppAssets.arrowLeft,
                  ),
                  32.spaceY,
                  UserPersonalDetailsWidget(
                    height: 20,
                    controller: signUpProvider.legalFirstNameController,
                    hint: getTranslated('james', context),
                    title: getTranslated('legal_first_name', context),
                    icon: Image.asset(
                      AppAssets.crossIconBlack,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  16.spaceY,
                  UserPersonalDetailsWidget(
                    height: 20,
                    controller: signUpProvider.legalLastNameController,
                    hint: getTranslated('fork', context),
                    title: getTranslated('legal_last_name', context),
                    icon: Image.asset(
                      AppAssets.crossIconBlack,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  16.spaceY,
                  UserPersonalDetailsWidget(
                    height: 20,
                    controller: signUpProvider.userPersonDetailsDOBController,
                    hint: getTranslated('MM/DD/YYYY', context),
                    title: getTranslated('date_of_birth', context),
                    readOnly: true,
                    enableInteraction: false,
                    onTap: () {},
                  ),
                  16.spaceY,
                  UserPersonalDetailsWidget(
                    height: 20,
                    controller:
                        signUpProvider.userPersonDetailsNationalityController,
                    hint: getTranslated('country', context),
                    title: getTranslated('nationality', context),
                    readOnly: true,
                    enableInteraction: false,
                    onTap: () {},
                    icon: Image.asset(
                      AppAssets.iconArrowDownBlack,
                      height: 11.h,
                      width: 22.w,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                  ),
                  16.spaceY,
                  UserPersonalDetailsWidget(
                    height: 20,
                    controller: signUpProvider.userPersonDetailsEmailController,
                    hint: getTranslated('dummy_email', context),
                    title: getTranslated('email', context),
                    onTap: () {},
                  ),
                  16.spaceY,
                  const CountryAndMobileNoWidget(),
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
                  color: true
                      ? context.theme.colorTheme.buttonColor
                      : context.theme.colorTheme.buttonDisabledColor,
                  text: Text(
                    getTranslated('continue', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, SignUpUserHomeAddressScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
