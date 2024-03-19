import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/info_text_with_icon.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_textstyle.dart';

class TeamsWidget extends ConsumerWidget {
  const TeamsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 247,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.spaceY,
            Row(
              children: [
                CommonTransprentButton(
                  title: "+ ${getTranslated("invite", context)}",
                ),
                10.spaceX,
                CommonTransprentButton(
                  title: getTranslated("manage_role", context),
                  imageIcon: AppAssets.switchicon,
                ),
                25.spaceX,
                InkWell(
                  onTap: () {
                    Navigation.pushNamed("owner_screen");
                  },
                  child: Image.asset(
                    AppAssets.rolesicon,
                    height: 35,
                  ),
                )
              ],
            ),
            20.spaceY,
            Text(
              "${getTranslated("all_people", context)} . 2",
              style: AppTextstyle.bodyTextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            15.spaceY,
            InfoTextWithIcon(
              imageicon: AppAssets.contactpermission,
            ),
            20.spaceY,
            InfoTextWithIcon(
              imageicon: AppAssets.inviteicon,
              subtitleColor: AppColors.red,
            )
          ],
        ),
      ),
    );
  }
}
