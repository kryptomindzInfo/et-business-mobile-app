import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_check_email_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/app_colors.dart';
import '../../../providers/signup_provider.dart';
import 'signup_widgets/button_bottom_navigation_widget.dart';
import 'signup_widgets/primary_button.dart';
import 'signup_widgets/text_field_widget.dart';

class SignUpEmailScreen extends ConsumerWidget {
  static const String routeName = "signup_email";

  const SignUpEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
          child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 26, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated('signup_email_title', context),
                spaceBtw: 5,
                // imageicon: AppAssets.arrowLeft,
                etBankLogo: true,
              ),
              20.spaceY,
              SizedBox(
                child: TextFieldWidget(
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.normalTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  // fillColor: AppColors.darkTeal,
                  controller: ref.read(signUpStateProvider).emailController,
                  hintText: getTranslated('enter_email_address', context),
                  hintStyle: AppTextstyle.bodyTextStyle(
                    color: context.theme.colorTheme.whiteColor.withOpacity(0.5),
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
        bottomNavigationBar: ButtonBottomNavigationWidget(
          children: [
            SizedBox(
              height: 48.h,
              width: 327.w,
              child: PrimaryButton(
                color: ref.watch(signUpStateProvider).isEmailEmpty
                    ? context.theme.colorTheme.disableButtonColor
                    : context.theme.colorTheme.yellowGreenColor,
                // buttonColor(ref.watch(signUpStateProvider).isEmailEmpty),
                text: Text(
                  getTranslated('continue', context),
                  style: AppTextstyle.bodyTextStyle(
                      color: ref.watch(signUpStateProvider).isEmailEmpty
                          ? context.theme.colorTheme.buttonHalfWhiteText
                          : context.theme.colorTheme.whiteAndBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  if (ref.read(signUpStateProvider).isEmailEmpty) {
                  } else {
                    FocusScope.of(context).unfocus();

                    Navigation.pushNamed(SignUpCheckEmailScreen.routeName);
                  }
                },
              ),
            ),
          ],
          // ),
        ),
      )),
    );
  }
}
