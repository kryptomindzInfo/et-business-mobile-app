import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import 'signup_how_many_payments_each_month_screen.dart';
import 'signup_who_are_your_customers_screen.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpWebsiteSocialEcommerceLinkScreen extends ConsumerWidget {
  static const String routeName = "website_social_ecommerce_link";

  const SignUpWebsiteSocialEcommerceLinkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        extendBody: true,
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('website_social_ecommerce_title', context),
                description:
                    getTranslated('website_social_ecommerce_subtitle', context),
                imageicon: AppAssets.arrowLeft,
              ),
              TextFieldWidget(
                style: const TextStyle(color: Colors.black),
                controller: ref.read(signUpStateProvider).emailController,
                hintText: getTranslated('link', context),
                hintStyle: AppTextstyle.bodyTextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                onChanged: (value) {
                  ref.read(signUpStateProvider).notify();
                },
              ),
              Text(
                getTranslated('dont_have_a_website', context),
                style:
                    AppTextstyle.bodyTextStyle(color: AppColors.baseGreenColor),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: BottomAppBar(
              elevation: 0,
              color: AppColors.transparent,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: PrimaryButton(
                    color: AppColors.baseGreenColor,
                    // buttonColor(
                    //     ref.watch(signUpStateProvider).isEmailEmpty),
                    text: Text(
                      getTranslated('continue', context),
                      style: AppTextstyle.bodyTextStyle(
                          color: AppColors.black,
                          // buttonTextColor(
                          //     ref.watch(signUpStateProvider).isEmailEmpty),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      // if (ref.read(signUpStateProvider).isEmailEmpty) {
                      //   // Navigation.pushNamed(SignUpCheckEmail.routeName);
                      // } else {
                      Navigation.pushNamed(
                          SignUpHowManyPaymentsEachMonthScreen.routeName);
                      // }
                    },
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ButtonBottomNavigation extends ConsumerWidget {
  final List<Widget> children;
  const ButtonBottomNavigation({super.key, this.children = const []});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Builder(builder: (context) {
      final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
      return Padding(
          padding: EdgeInsets.only(bottom: keyboardHeight),
          child: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Center(
              child: SizedBox(
                height: 48.h,
                width: 327.w,
                child: Column(
                  children: children,
                ),
              ),
            ),
          ));
    });
  }
}
