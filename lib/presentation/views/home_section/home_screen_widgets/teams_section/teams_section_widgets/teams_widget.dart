import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_green_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/invite_to_et_bank_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/manage_roles_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/owner_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/roles_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../common_widgets/see_all_widget.dart';
import '../../../../common_widgets/white_flexible_card.dart';
import '../../../../payments_section/payment_section_widgets/transfer_favourite_profile_widget.dart';

class TeamsWidget extends ConsumerWidget {
  const TeamsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      border: Border.all(
        color: context.theme.colorTheme.transparentToTeal,
      ),
      widget: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CommonGreenButton(
                borderColor: context.theme.colorTheme.transparentToYellow,
                height: 42,
                titleFontSize: 14,
                borderRadius: 64,
                textColor: AppColors.white,
                color: context.theme.colorTheme.transparentToGreen,
                imageIcon: AppAssets.plusicon,
                imageHeight: 13,
                imageWidth: 14,
                iconColor: AppColors.white,
                title: getTranslated("invite", context),
                // padding: const EdgeInsets.fromLTRB(11, 6, 24, 6),
                padding: const EdgeInsets.only(left: 10, right: 22),
                onpress: () {
                  Navigation.pushNamed(InviteToETBankScreen.routeName);
                },
              ),
              CommonGreenButton(
                padding: const EdgeInsets.only(left: 13, right: 15),

                textColor: AppColors.white,
                height: 42,
                borderRadius: 64,
                borderColor: context.theme.colorTheme.transparentToYellow,
                color: context.theme.colorTheme.transparentToGreen,
                imageIcon: AppAssets.manageRoles,
                imageHeight: 16,
                imageWidth: 16,
                // padding: const EdgeInsets.symmetric(horizontal: 8),
                title: getTranslated("manage_role", context),
                titleFontSize: 14,
                onpress: () {
                  // Navigation.pushNamed(ManageRolesScreen.routeName);
                  Navigation.pushNamed(RolesScreen.routeName);
                },
              ),
              CommonGreenButton(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                height: 42,
                borderRadius: 26,
                iconColor: AppColors.white,
                borderColor: context.theme.colorTheme.transparentToYellow,
                color: context.theme.colorTheme.transparentToGreen,
                // padding: const EdgeInsets.symmetric(horizontal: 8),
                imageIcon: AppAssets.poepleicon,
                imageHeight: 14,
                imageWidth: 19,
                onpress: () {
                  Navigation.pushNamed(OwnerScreen.routeName);
                },
                // title: getTranslated("manage_role", context),
              ),
            ],
          ),
          25.spaceY,
          SeeAllCommonWidget(
              "${getTranslated("all_people", context)} . 4", false),
          10.spaceY,
          const Column(
            children: [
              TransferFavouriteProfileWidget(
                imageIcon: AppAssets.nickle,
                title: "Nickle",
              ),
              TransferFavouriteProfileWidget(
                imageIcon: AppAssets.michel,
                title: "Michel",
              ),
              TransferFavouriteProfileWidget(
                imageIcon: AppAssets.evelyn,
                title: "Evelyn",
              ),
              TransferFavouriteProfileWidget(
                imageIcon: AppAssets.oliva,
                title: "Oliva",
              )
            ],
          ),
        ],
      ),
    );
  }
}
