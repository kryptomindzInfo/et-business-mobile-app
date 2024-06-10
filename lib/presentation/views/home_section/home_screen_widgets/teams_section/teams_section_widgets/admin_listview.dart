import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/core/app_print.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/navigation/params/home_screen_args.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/get_card_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../providers/team_provider.dart';
import '../../../../common_widgets/white_flexible_card.dart';
import '../../../../sending_currency_screens/sending_currency_widgets/verified_bottom_sheet_widget.dart';

class AdminscreenListview extends ConsumerWidget {
  const AdminscreenListview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      border: Border.all(
        color: context.theme.colorTheme.transparentToTeal,
      ),
      borderRadius: 8,
      widget: SizedBox(
        height: 240,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ref.watch(teamscreenProvider).adminScreenData.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (index == 1) {
                Navigator.pushNamed(
                  context,
                  GetCardScreen.routeName,
                  arguments: GetCardScreenArgs(onOrderPressed: () {
                    showModalBottomSheet(
                      backgroundColor: AppColors.transparent,
                      context: context,
                      builder: (context) => Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: VerifiedBottomSheetWidget(
                          height: 500,
                          title: Column(
                            children: [
                              Text(
                                textAlign: TextAlign.center,
                                getTranslated(
                                    "Invitation sent to \numrziad123.com ",
                                    context),
                                style: AppTextstyle.bodyTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          description: Column(
                            children: [
                              // 20.spaceY,
                              Text(
                                getTranslated(
                                    "They will receive an invitation email to sign-up immediately",
                                    context),
                                textAlign: TextAlign.center,
                                style: AppTextstyle.bodyTextStyle(
                                    color: AppColors.grey,
                                    fontSize: 14,
                                    overflow: TextOverflow.clip),
                              ),
                              65.spaceY,
                              PrimaryButton(
                                minwidth: 288,
                                text: Text(
                                  'Invite someone else',
                                  style: AppTextstyle.bodyTextStyle(
                                      color: AppColors.black),
                                ),
                                color: AppColors.yellowGreen,
                                onPressed: () {
                                  Navigation.pushNamed(
                                      BaseBottomNavBar.routeName);
                                },
                              ),
                              20.spaceY,
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                );
              }
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 33,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.yellowGreen,
                            image: DecorationImage(
                                image: AssetImage(
                                  ref
                                      .watch(teamscreenProvider)
                                      .adminScreenData[index]["icon"],
                                ),
                                scale: 2)),
                      ),
                      15.spaceX,
                      Text(
                        getTranslated(
                            ref.watch(teamscreenProvider).adminScreenData[index]
                                ["title"],
                            context),
                        style: AppTextstyle.headingTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: context.theme.colorTheme.normalTextColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.greencheckround,
                        height: 18,
                      ),
                      15.spaceX,
                      Text(
                        "Full access",
                        style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: context.theme.colorTheme.normalTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
