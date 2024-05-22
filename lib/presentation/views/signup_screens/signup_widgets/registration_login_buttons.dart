import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/common_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../navigation/navigation.dart';
import '../../../../providers/theme_provider.dart';
import '../../bottom_navigation_bar.dart';
import '../signup_email_screen.dart';

class RegistrationLoginButtons extends ConsumerWidget {
  const RegistrationLoginButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RegistrationLoginCommonButton(
          buttonTitle: getTranslated("Sign_up", context),
          buttoncolor: context.theme.colorTheme.buttonColor,
          buttonTitleColor: context.theme.colorTheme.buttonTitleColor,
          onpress: () {
            // ref.read(themeProvider.notifier).toggle();
            Navigation.pushNamed(SignUpEmailScreen.routeName);
          },
        ),
        10.spaceX,
        RegistrationLoginCommonButton(
          buttonTitle: getTranslated("Login", context),
          buttoncolor: AppColors.tealColor,
          buttonTitleColor: context.theme.colorTheme.whiteButtonColor,
          onpress: () {
            Navigation.pushNamed(BaseBottomNavBar.routeName);
          },
        )
      ],
    );
  }
}
