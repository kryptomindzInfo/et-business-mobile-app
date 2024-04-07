import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
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
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getTranslated("essentials", context),
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.primaryColor,
                  overflow: TextOverflow.clip),
            ),
            15.spaceY,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EssentialIconWithTitle(
                  imageicon: AppAssets.hubcardsicon,
                  title: "cards",
                ),
                EssentialIconWithTitle(
                  imageicon: AppAssets.teamicon,
                  title: "team",
                ),
                EssentialIconWithTitle(
                  imageicon: AppAssets.merchanticon,
                  title: "merchant",
                ),
                EssentialIconWithTitle(
                  imageicon: AppAssets.linkedicon,
                  title: "linked",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
