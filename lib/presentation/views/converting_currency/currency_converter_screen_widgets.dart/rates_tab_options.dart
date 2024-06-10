import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/rates_tab.chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/currency_coverter_provider.dart';

class RatesScreenOptionsWidget extends ConsumerWidget {
  const RatesScreenOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ref.read(currencyScreenProvider).ratesOptions.length,
        separatorBuilder: (context, index) {
          return 16.spaceX;
        },
        itemBuilder: (context, index) {
          return RatesScreenChips(
            title: ref.read(currencyScreenProvider).ratesOptions[index]
                ["title"],
            onpress: () =>
                ref.read(currencyScreenProvider).setCCtabIndex(index),
            color:
                ref.watch(currencyScreenProvider).currencyConverterTabIndex ==
                        index
                    ? context.theme.colorTheme.activeChipColor
                    : context.theme.colorTheme.chipsColor,
            titleColor:
                ref.watch(currencyScreenProvider).currencyConverterTabIndex ==
                        index
                    ? context.theme.colorTheme.blackColor
                    : AppColors.white,
          );
        },
      ),
    );
  }
}
