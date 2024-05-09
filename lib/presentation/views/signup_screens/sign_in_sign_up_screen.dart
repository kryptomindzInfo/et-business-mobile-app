import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/registration_login_buttons.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/registration_login_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInSignUpScreen extends ConsumerWidget {
  static const String routeName = "registration_screen";
  const SignInSignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: context.theme.colorTheme.backgroundColor,
      appBar: CommonAppBar(
        etBankLogo: true,
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            40.spaceY,
            Image.asset(
              AppAssets.registrationImage,
              height: 310,
            ),
            RegistrationLoginTextWidget(),
            20.spaceY,
            RegistrationLoginButtons()
          ],
        ),
      ),
    );
  }
}
