import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/essential_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';

class MyApptabEssentialWidget extends ConsumerWidget {
  const MyApptabEssentialWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      borderRadius: 12,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslated("essentials", context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.baseGreenColor,
                overflow: TextOverflow.clip),
          ),
          15.spaceY,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EssentialIconWithTitle(
                imageicon: AppAssets.hubCards,
                title: "cards",
                imageWidth: 47,
                imageHieght: 27,
              ),
              EssentialIconWithTitle(
                imageicon: AppAssets.hubTeam,
                title: "team",
                imageWidth: 44,
                imageHieght: 35,
              ),
              EssentialIconWithTitle(
                imageicon: AppAssets.hubMerchant,
                title: "merchant",
                imageWidth: 36,
                imageHieght: 36,
              ),
              EssentialIconWithTitle(
                imageicon: AppAssets.hubLinked,
                title: "linked",
                imageWidth: 34,
                imageHieght: 34,
              ),
            ],
          )
        ],
      ),
    );
  }
}
