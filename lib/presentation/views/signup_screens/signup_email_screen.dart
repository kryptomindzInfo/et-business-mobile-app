import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_check_email_screen.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../globals/button_color.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpEmailScreen extends ConsumerWidget {
  static const String routeName = "signup_email";

  const SignUpEmailScreen({super.key});

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
                title: getTranslated('signup_email_title', context),
                imageicon: AppAssets.arrowLeft,
              ),
              SizedBox(
                // width: 300.w,
                // height: 50.h,
                child: TextFieldWidget(
                  style: const TextStyle(color: Colors.black),
                  controller: ref.read(signUpStateProvider).emailController,
                  hintText: getTranslated('signup_email_title', context),
                  hintStyle: AppTextstyle.bodyTextStyle(
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  onChanged: (value) {
                    ref.read(signUpStateProvider).notify();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: 
        Builder(builder: (context) {
          final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
          return
           Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: 
            BottomAppBar(
              elevation: 0,
              color: AppColors.transparent,
              child: Center(
                child: SizedBox(
                  height: 48.h,
                  width: 327.w,
                  child: PrimaryButton(
                    color:
                        buttonColor(ref.watch(signUpStateProvider).isEmailEmpty),
                    text: Text(
                      getTranslated('continue', context),
                      style: AppTextstyle.bodyTextStyle(
                          color: buttonTextColor(
                              ref.watch(signUpStateProvider).isEmailEmpty),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {
                      if (ref.read(signUpStateProvider).isEmailEmpty) {
                        // Navigation.pushNamed(SignUpCheckEmail.routeName);
                      } else {
                        Navigation.pushNamed(SignUpCheckEmailScreen.routeName);
                      }
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
