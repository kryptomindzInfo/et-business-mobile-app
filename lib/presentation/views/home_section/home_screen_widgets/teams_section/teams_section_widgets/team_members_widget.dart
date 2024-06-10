import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/teams_section/teams_section_widgets/info_text_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../resources/localization/language_constrants.dart';
import '../../../../common_widgets/white_flexible_card.dart';

class TeamMemebersWidget extends ConsumerWidget {
  const TeamMemebersWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            getTranslated(
              "team_member",
              context,
            ),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: context.theme.colorTheme.normalTextColor),
          ),
        ),
        12.spaceY,
        CommonWhiteFlexibleCard(
          borderRadius: 12,
          color: context.theme.colorTheme.businessDetailsContainer,
          border: Border.all(
            color: context.theme.colorTheme.transparentToTeal,
          ),
          widget: Column(
            children: [
              const InfoTextWithIcon(
                imageicon: AppAssets.contactpermission,
              ),
              20.spaceY,
              const InfoTextWithIcon(
                imageicon: AppAssets.inviteicon,
                subtitleColor: AppColors.red,
              )
            ],
          ),
        ),
      ],
    );
  }
}
