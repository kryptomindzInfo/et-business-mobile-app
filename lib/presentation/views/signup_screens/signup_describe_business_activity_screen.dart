import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';
import 'signup_who_are_your_customers_screen.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpDescribeBusinessActivityScreen extends ConsumerWidget {
  static const String routeName = "signup_describe_business_activity";

  const SignUpDescribeBusinessActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          extendBody: true,
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
              // etBankLogo: true,
              ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  title: getTranslated(
                      'describe_your_business_activity_title', context),
                  spaceBtw: 0,
                  description: getTranslated(
                      'describe_your_business_activity_subtitle', context),
                  // imageicon: AppAssets.arrowLeft,
                ),
                48.spaceY,
                TextFieldWidget(
                  style: const TextStyle(color: Colors.white),
                  controller:
                      ref.read(signUpStateProvider).businessActivityController,
                  hintText: getTranslated('description', context),
                  hintStyle: AppTextstyle.bodyTextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  onChanged: (value) {
                    ref.read(signUpStateProvider).notify();
                  },
                ),
                12.spaceY,
                Text(
                  getTranslated(
                      'please_provide_at_least_50_characters', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.headerDescriptionColor,
                      fontSize: 12),
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
                    Navigation.pushNamed(
                        SignUpWhoAreYourCustomersScreen.routeName);
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
