import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rates_screen_widgets.dart/adding_button_with_title.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rates_screen_widgets.dart/currency_pair_card.dart';
import 'package:etbank_business_app/providers/rates_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddingCurrencyPairContainer extends ConsumerWidget {
  const AddingCurrencyPairContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.black, borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Consumer(builder: (context, ref, child) {
              return AddingButtonWithTitle(
                onpress: () {
                  ref.watch(ratesScreenProvider).addCurrencyPairCard();
                },
              );
            }),
            20.spaceY,
            Expanded(
              child: ListView.builder(
                itemCount:
                    ref.watch(ratesScreenProvider).currencyPairCards.length,
                itemBuilder: (context, index) {
                  return ref
                      .watch(ratesScreenProvider)
                      .currencyPairCards[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
