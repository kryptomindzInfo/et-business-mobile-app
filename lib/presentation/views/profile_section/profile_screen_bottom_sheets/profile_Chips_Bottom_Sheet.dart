import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_card_common_widget.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/see_all_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/plans_bottom_sheet_info_text.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_chips.dart';
import 'package:etbank_business_app/providers/profile_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_textstyle.dart';

class UpgradeBottomSheet extends ConsumerWidget {
  const UpgradeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var profileProviderWatch = ref.watch(profilescreenProvider);
    List<Map<dynamic, dynamic>> upgradePlanslist =
        profileProviderWatch.upgradeData;
    return Container(
      height: 700,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: HeaderIconWithTitle(
                title: getTranslated("select_plan", context),
                imageicon: AppAssets.crossicon,
                edgeinsets: EdgeInsets.only(top: 20),
              ),
            ),
            10.spaceY,
            Row(
              children: upgradePlanslist.map((e) {
                int index =
                    ref.read(profilescreenProvider).upgradeData.indexOf(e);
                return InkWell(
                  onTap: () {
                    ref.read(profilescreenProvider).selectPlan(index);
                    // print(ref.read(profilescreenProvider).selectedPlan);
                    // print(index);
                  },
                  child: ProfileScreenChips(
                    title: e["title"],
                    color: index == profileProviderWatch.selectedPlan
                        ? AppColors.tealColor
                        : AppColors.mateBlackColor,
                  ),
                );
              }).toList(),
            ),
            15.spaceY,
            Container(
              height: 106,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: AppColors.primaryColor,
                  border: Border.all(color: AppColors.white)),
              child: Container(
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          upgradePlanslist[profileProviderWatch.selectedPlan]
                              ["title"],
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 48, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1 month free . £${upgradePlanslist[profileProviderWatch.selectedPlan]["price"]}/month",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black.withOpacity(0.5)),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.popularicon,
                          height: 30,
                        ),
                        5.spaceY,
                        Text(
                          "Popular",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            25.spaceY,
            const SeeAllCommonWidget("Get more from your plan", false),
            15.spaceY,
            InfoCardCommonWidget(
              child: Column(
                children: [
                  ...(upgradePlanslist[profileProviderWatch.selectedPlan]
                          ["data"] as List)
                      .map(
                        (e) => PlansBottomSheetInfoText(
                            imageicon: e["icon"],
                            title: e["title"],
                            subtitle: e["subtitle"]),
                      )
                      .toList(),
                  15.spaceY,
                  PrimaryButton(
                      height: 34,
                      minwidth: 288,
                      color: AppColors.primaryColor,
                      text: Text(
                          "Get Grow for £${upgradePlanslist[profileProviderWatch.selectedPlan]["price"]} Free"),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => ConfirmationBottomSheet(),
                        );
                      }),
                  15.spaceY,
                ],
              ),
            ),

            // Text(upgradePlanslist[profileProviderWatch.selectedPlan][{}])
          ],
        ),
      ),
    );
  }
}
