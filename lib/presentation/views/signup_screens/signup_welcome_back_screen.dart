import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/icon_button_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_assets.dart';
import 'signup_enter_passcode_screen.dart';
import 'signup_widgets/image_screen_widget.dart';

class SignUpWelcomeBackScreen extends ConsumerWidget {
  static const String routeName = "signup_welcome_back";

  const SignUpWelcomeBackScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: ImageScreenWidget(
          title: 'welcome_back_title',
          subtitle: 'welcome_back_subtitle',
          image: AppAssets.profilePic,
          isLogo: true,
          buttons: [
            Row(
              children: [
                IconButtonWidget(
                  color: context.theme.colorTheme.tealToGrey,
                  image: const Icon(
                    Icons.close,
                    size: 22,
                    color: AppColors.white,
                  ),
                  text: Text(
                    getTranslated('no_not_me', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.blackAndWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                ),
                16.spaceX,
                IconButtonWidget(
                  color: context.theme.colorTheme.buttonColor,
                  image: const Icon(
                    size: 22,
                    Icons.check,
                    color: AppColors.black,
                  ),
                  text: Text(
                    getTranslated('yes_confirm', context),
                    style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigation.pushNamed(SignUpEnterPassCodeScreen.routeName);
                  },
                ),
              ],
            ),
          ]),
    );
  }
}
