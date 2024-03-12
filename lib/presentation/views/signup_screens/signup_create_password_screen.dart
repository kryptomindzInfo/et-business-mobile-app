import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_welcome_back_screen.dart';
import 'package:etbank_business_app/providers/signup_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_colors.dart';
import '../../../globals/button_color.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpCreatePassword extends ConsumerWidget {
  static const String routeName = "signup_create_password";

  const SignUpCreatePassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        // extendBody: true,

        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('create_password_title', context),
                description: getTranslated('create_password_subtitle', context),
                imageicon: AppAssets.arrowLeft,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: TextFieldWidget(
                        obscureText: ref.watch(signUpStateProvider).isObscured,
                        suffixIcon: Icon(
                          ref.watch(signUpStateProvider).isObscured
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.grey,
                        ),
                        fillColor: ref
                                .watch(signUpStateProvider)
                                .containsSpecialCharacters
                            ? AppColors.white
                            : AppColors.lightRed,
                        onSuffixIconTap: () {
                          ref
                              .read(signUpStateProvider)
                              .togglePasswordVisibility();
                        },
                        style: const TextStyle(color: Colors.black),
                        controller:
                            ref.read(signUpStateProvider).passwordController,
                        hintText: getTranslated('password', context),
                        hintStyle: AppTextstyle.bodyTextStyle(
                          color: AppColors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (value) {
                          ref
                              .read(signUpStateProvider)
                              .updatepasswordConditionText(value);
                          ref.read(signUpStateProvider).notify();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              15.spaceY,
              ref.watch(signUpStateProvider).containsSpecialCharacters
                  ? Text(
                      getTranslated('password_conditon', context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12.sp, color: AppColors.grey),
                    )
                  : Row(
                      children: [
                        Image.asset(
                          AppAssets.exclamationMark,
                          height: 12.h,
                          width: 12.w,
                        ),
                        8.spaceX,
                        Text(
                          getTranslated('Password_condition_failed', context),
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12.sp, color: AppColors.red),
                        ),
                      ],
                    ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Builder(builder: (context) {
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
                    child: PrimaryButton(
                      color: buttonColor(
                          ref.watch(signUpStateProvider).isPasswordEmpty),
                      text: Text(
                        getTranslated('continue', context),
                        style: AppTextstyle.bodyTextStyle(
                            color: buttonTextColor(
                                ref.watch(signUpStateProvider).isPasswordEmpty),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        if (ref.read(signUpStateProvider).isPasswordEmpty) {
                        } else {
                          Navigation.pushNamed(
                              SignUpWelcomeBackScreen.routeName);
                        }
                      },
                    ),
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
