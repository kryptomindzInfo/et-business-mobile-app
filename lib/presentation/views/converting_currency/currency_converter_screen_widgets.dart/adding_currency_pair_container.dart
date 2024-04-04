import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/adding_button_with_title.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_pair_card.dart';
import 'package:etbank_business_app/providers/currency_coverter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddingCurrencyPairContainer extends ConsumerWidget {
  const AddingCurrencyPairContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 550,
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        border: Border.all(color: context.theme.colorTheme.borderColor),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            return AddingButtonWithTitle(
              onpress: () {
                ref.watch(currencyScreenProvider).addCurrencyPairCard();
              },
            );
          }),
          20.spaceY,
          Expanded(
            child: ListView.builder(
              itemCount:
                  ref.watch(currencyScreenProvider).currencyPairCards.length,
              itemBuilder: (context, index) {
                return ref
                    .watch(currencyScreenProvider)
                    .currencyPairCards[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
