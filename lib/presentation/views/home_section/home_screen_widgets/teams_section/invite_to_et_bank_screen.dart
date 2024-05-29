import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/assign_role_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/user_personal_details_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../providers/team_provider.dart';
import '../../../common_widgets/app_common_appbar.dart';
import '../../../common_widgets/common_button.dart';

class InviteToETBankScreen extends ConsumerWidget {
  static const String routeName = "invite_et_bank_screen";
  const InviteToETBankScreen({super.key});

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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                HeaderIconWithTitle(
                  // imageicon: AppAssets.arrowLeft,
                  title: getTranslated("invite_to_et_bank", context),
                ),
                24.spaceY,
                UserPersonalDetailsWidget(
                    height: 30,
                    title: getTranslated("email", context),
                    hint: "Type or past multiple at once",
                    hintStyle:
                        AppTextstyle.bodyTextStyle(color: AppColors.grey),
                    controller:
                        ref.read(teamscreenProvider).invitationController),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 50, left: 20, right: 20),
            child: CommonButton(
              height: 38,
              title: getTranslated("continue", context),
              mainButtonColor: true
                  ? context.theme.colorTheme.buttonColor
                  : context.theme.colorTheme.buttonDisabledColor,
              titleColor: AppColors.mateBlackColor,
              onpress: () {
                Navigation.pushNamed(AssignRoleScreen.routeName);
              },
            ),
          ),
        ),
      ),
    );
  }
}
