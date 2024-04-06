import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/card_section_bottom_sheets/useing_card_with_apple_pay_btm_sht.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/available_to_spend_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/card_swiper.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/freeze_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_colors.dart';
import 'cards_section_widgets/funding_amount_card.dart';

// ignore: must_be_immutable
class MyCardsScreen extends ConsumerWidget {
  static const String routeName = "mycards_screen";

  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderIconWithTitle(
                  imageicon: AppAssets.arrowLeft,
                  title: getTranslated("my_cards", context),
                  etBankLogo: true,
                ),
                20.spaceY,
                const CardsSwiper(),
                25.spaceY,
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => UsingCardWithApplePay(),
                    );
                  },
                  child: Image.asset(
                    AppAssets.addtoapple,
                    height: 40,
                  ),
                ),
                10.spaceY,
                AvailableToSpendCard(),
                10.spaceY,
                FundingAmountCard(),
                10.spaceY,
                FreezeCard(),
                10.spaceY,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
