import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/card_settings_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/get_card_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/my_cards_screen.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/cards_info_details_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_textstyle.dart';

class CardsMainWidget extends ConsumerWidget {
  const CardsMainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 352,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: context.theme.colorTheme.businessDetailsContainer,
              border: Border.all(color: context.theme.colorTheme.borderColor)),
          child: Padding(
            padding: const EdgeInsets.only(left: 27, right: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonGreyButton(
                      borderRadius: 8,
                      title: "+ ${getTranslated("add_card", context)}",
                      onpress: () {
                        Navigation.pushNamed(GetCardScreen.routeName);
                      },
                    ),
                    InkWell(
                        onTap: () {
                          Navigation.pushNamed(MyCardsScreen.routeName);
                        },
                        child: IconContainer(
                          border: Border.all(
                              color:
                                  context.theme.colorTheme.transparentToTeal),
                          borderRadius: BorderRadius.circular(12),
                          bgColor: context.theme.colorTheme.indigoToTransparent,
                          image: AppAssets.cardsIcons,
                          scale: 2.5,
                        )
                        // Image.asset(
                        //   AppAssets.cardsicon,
                        //   height: 32,
                        // ),
                        ),
                  ],
                ),
                20.spaceY,
                Text(
                  "${getTranslated("my_cards", context)} . 2",
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.normalTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                15.spaceY,
                CardsInfoDetailsWidget(
                  image: AppAssets.greencard,
                  title: "Disposable Virtual Card",
                  subtitle: "Low available funds",
                  onpress: () {
                    Navigation.pushNamed(CardSettingsScreen.routeName);
                  },
                ),
                25.spaceY,
                CardsInfoDetailsWidget(
                  image: AppAssets.silvercard,
                  title: "Standard",
                  subtitle: "Low available funds",
                  onpress: () {
                    Navigation.pushNamed(CardSettingsScreen.routeName);
                  },
                ),
                30.spaceY,
                Text(
                  "${getTranslated("my_cards", context)} . 2",
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.normalTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                20.spaceY,
                Image.asset(
                  AppAssets.teamsCard,
                  height: 25,
                  color: context.theme.colorTheme.yellowToGreen,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
