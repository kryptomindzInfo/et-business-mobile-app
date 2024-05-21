import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/registration_login_buttons.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/registration_login_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInSignUpScreen extends ConsumerWidget {
  static const String routeName = "registration_screen";
  const SignInSignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.backgroundColor,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Center(
          child: Column(
            children: [
              60.spaceY,
              Image.asset(
                AppAssets.registrationImage,
                height: 310,
              ),
              12.spaceY,
              const RegistrationLoginTextWidget(),
              24.spaceY,
              const RegistrationLoginButtons()
            ],
          ),
        ),
      ),
    );
  }
}
