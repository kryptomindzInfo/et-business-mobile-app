import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../providers/cards_provider.dart';

class GetCardsScreenSwiper extends ConsumerWidget {
  const GetCardsScreenSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cardsProRead = ref.read(cardscreenProvider);
    var cardsProWatch = ref.watch(cardscreenProvider);
    return Column(
      children: [
        DotsIndicator(
          dotsCount: cardsProWatch.getCardsScreenData.length,
          position: cardsProWatch.getCardsScreenIndex.toDouble(),
          decorator: DotsDecorator(
            color: Colors.grey.withOpacity(0.8), // Inactive color
            activeColor: AppColors.black,
            size: Size.square(10),
            activeSize: Size.square(10),
          ),
        ),
        20.spaceY,
        Container(
          height: 170,
          child: Swiper(
            itemCount: cardsProRead.getCardsScreenData.length,
            viewportFraction: 0.8,
            scale: 0.9,
            indicatorLayout: PageIndicatorLayout.COLOR,
            customLayoutOption: CustomLayoutOption(startIndex: 1),
            itemBuilder: (context, index) {
              return Image.asset(
                  cardsProRead.getCardsScreenData[index]["data"]["image"]);
            },
            onIndexChanged: (value) {
              print(value);
              cardsProRead.getCardsScreenIndexftn(value);
            },
          ),
        ),
      ],
    );
  }
}
