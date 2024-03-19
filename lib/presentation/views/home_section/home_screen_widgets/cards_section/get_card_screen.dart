import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/card_section_bottom_sheets/ready_to_use_bottom_Sheet.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/get_cards_screen_swiper.dart';
import 'package:etbank_business_app/providers/cards_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetCardScreen extends ConsumerWidget {
  static const String routeName = "get_card_Screen";
  const GetCardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var proRead = ref.read(cardscreenProvider);
    var proWatch = ref.watch(cardscreenProvider);
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 180,
                child: HeaderIconWithTitle(
                  imageicon: AppAssets.arrowLeft,
                  title: getTranslated("get_card", context),
                  description: getTranslated(
                      proWatch.getCardsScreenData[proWatch.getCardsScreenIndex]
                          ["data"]["description"],
                      context),
                ),
              ),
              // 10.spaceY,
              CommonWhiteFlexibleCard(
                widget: Column(
                  children: [
                    Image.asset(
                      proWatch.getCardsScreenData[proWatch.getCardsScreenIndex]
                          ["data"]["icon"],
                      height: 35,
                    ),
                    5.spaceY,
                    Text(
                      proWatch.getCardsScreenData[proWatch.getCardsScreenIndex]
                          ["title"],
                      style: AppTextstyle.headingTextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 40,
                      child: Text(
                        getTranslated(
                            proWatch.getCardsScreenData[proWatch
                                .getCardsScreenIndex]["data"]["description"],
                            context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 13, overflow: TextOverflow.clip),
                      ),
                    ),
                    GetCardsScreenSwiper(),
                    50.spaceY,
                  ],
                ),
              ),

              40.spaceY,
              CommonButton(
                title: getTranslated("order", context),
                mainButtonColor: AppColors.primaryColor,
                titleColor: AppColors.black,
                onpress: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => ReadyToUseBottomSheet(),
                  );
                },
              ),
              20.spaceY,
              Text(
                getTranslated("donot_order", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    overflow: TextOverflow.clip,
                    color: AppColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
