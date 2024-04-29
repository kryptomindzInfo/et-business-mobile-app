import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_green_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/invite_to_et_bank_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/manage_roles_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/owner_screen.dart';
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonGreenButton(
              imageIcon: AppAssets.invitepeople,
              title: getTranslated("invite", context),
              onpress: () {
                Navigation.pushNamed(InviteToETBankScreen.routeName);
              },
            ),
            CommonGreenButton(
              imageIcon: AppAssets.managerole,
              title: getTranslated("manage_role", context),
              onpress: () {
                Navigation.pushNamed(ManageRolesScreen.routeName);
              },
            ),
            CommonGreenButton(
              imageIcon: AppAssets.poepleicon,
              imageHeight: 15,
              onpress: () {
                Navigation.pushNamed(OwnerScreen.routeName);
              },
              // title: getTranslated("manage_role", context),
            ),
          ],
        ),
        25.spaceY,
        SeeAllCommonWidget(
            "${getTranslated("all_people", context)} . 55", false),
        10.spaceY,
        CommonWhiteFlexibleCard(
          color: AppColors.grey.withOpacity(0.5),
          widget: const Column(
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
        )
      ],
    );
  }
}
