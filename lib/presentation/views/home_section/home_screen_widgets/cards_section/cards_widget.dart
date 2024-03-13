import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_info_details_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_textstyle.dart';

class CardsWidgets extends ConsumerWidget {
  const CardsWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 352,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: AppColors.primaryColor),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonTransprentButton(
                      title: "+ ${getTranslated("add_card", context)}",
                    ),
                    Image.asset(
                      AppAssets.cardsicon,
                      height: 32,
                    ),
                  ],
                ),
                20.spaceY,
                Text(
                  "${getTranslated("my_cards", context)} . 2",
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                15.spaceY,
                const CardsInfoDetailsWidget(
                  image: AppAssets.greencard,
                  title: "Disposable Virtual Card",
                  subtitle: "Low available funds",
                ),
                25.spaceY,
                const CardsInfoDetailsWidget(
                  image: AppAssets.silvercard,
                  title: "Standard",
                  subtitle: "Low available funds",
                ),
                30.spaceY,
                Text(
                  "${getTranslated("my_cards", context)} . 2",
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                20.spaceY,
                Image.asset(
                  AppAssets.teamsCard,
                  height: 25,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
