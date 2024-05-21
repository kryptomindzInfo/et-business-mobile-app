import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/providers/cards_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardsSwiper extends ConsumerWidget {
  const CardsSwiper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cardsProRead = ref.read(cardscreenProvider);
    var cardsProWatch = ref.watch(cardscreenProvider);
    return Column(
      children: [
        SizedBox(
          height: 170,
          child: Swiper(
            itemCount: cardsProRead.cards.length,
            viewportFraction: 0.8,
            scale: 0.9,
            indicatorLayout: PageIndicatorLayout.COLOR,
            customLayoutOption: CustomLayoutOption(startIndex: 1),
            itemBuilder: (context, index) {
              return Image.asset(cardsProRead.cards[index]);
            },
            onIndexChanged: (value) {
              print(value);
              cardsProRead.getCardIndex(value.toDouble());
            },
          ),
        ),
        DotsIndicator(
          dotsCount: cardsProWatch.cards.length,
          position: cardsProWatch.cardIndex,
          decorator: const DotsDecorator(
            color: AppColors.grey, // Inactive color
            activeColor: AppColors.primaryColor,
            size: Size.square(10),
            activeSize: Size.square(10),
          ),
        )
      ],
    );
  }
}
