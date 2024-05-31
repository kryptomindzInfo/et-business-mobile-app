import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_card_common_widget.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/see_all_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/plans_bottom_sheet_info_text.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/upgrade_btm_sheet_main_Card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_screen_chips.dart';
import 'package:etbank_business_app/providers/profile_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_assets.dart';
import '../../signup_screens/get_plastic_card_screen.dart';

class UpgradeBottomSheet extends ConsumerWidget {
  final String? icon;
  final Function()? onPressed;
  const UpgradeBottomSheet({super.key, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var profileProviderWatch = ref.watch(profilescreenProvider);
    List<Map<dynamic, dynamic>> upgradePlanslist =
        profileProviderWatch.upgradeData;
    return Container(
      height: MediaQuery.of(context).size.height / 1.05,
      decoration: BoxDecoration(
        color: context.theme.colorTheme.bottomSheetColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: HeaderIconWithTitle(
                  title: getTranslated("select_plan", context),
                  imageicon: icon ?? AppAssets.arrowLeftShort,
                  edgeinsets: const EdgeInsets.only(top: 20),
                ),
              ),
              23.spaceY,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
                            ? context.theme.colorTheme.activeChipColor
                            : context.theme.colorTheme.chipsColor,
                        titleColor: index == profileProviderWatch.selectedPlan
                            ? context.theme.colorTheme.blackColor
                            : AppColors.white,
                      ),
                    );
                  }).toList(),
                ),
              ),
              18.spaceY,
              UpgradeBottomSheetMainCard(
                isPopular: upgradePlanslist[profileProviderWatch.selectedPlan]
                        ["isPopular"] ??
                    false,
                title: upgradePlanslist[profileProviderWatch.selectedPlan]
                    ["title"],
                subtitle:
                    "1 month free . £${upgradePlanslist[profileProviderWatch.selectedPlan]["price"]}/month",
              ),
              32.spaceY,
              const SeeAllCommonWidget("Get more from your plan", false),
              16.spaceY,
              InfoCardCommonWidget(
                color: context.theme.colorTheme.businessDetailsContainer,
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
                    32.spaceY,
                    PrimaryButton(
                        height: 38,
                        minwidth: 288,
                        color: context.theme.colorTheme.buttonColor,
                        text: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Get Grow for ',
                                style: AppTextstyle.bodyTextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text:
                                    '${upgradePlanslist[profileProviderWatch.selectedPlan]["price"] ?? ''}',
                                style: const TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ' Free',
                                style: AppTextstyle.bodyTextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        onPressed: onPressed ??
                            () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                // builder: (context) => const ConfirmationBottomSheet(),
                                builder: (context) =>
                                    const GetPlasticCardScreen(),
                              );
                            }),
                    26.spaceY,
                  ],
                ),
              ),

              // Text(upgradePlanslist[profileProviderWatch.selectedPlan][{}])
            ],
          ),
        ),
      ),
    );
  }
}
