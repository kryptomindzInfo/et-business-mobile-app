import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_value_with_status_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyChartWhiteCard extends ConsumerWidget {
  const CurrencyChartWhiteCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CurrencyValueWithStatusText(
              digitalValue: "1.3275",
              status: "lowest",
            ),
          ),
          CurrencyValueWithStatusText(
            digitalValue: "1.3601",
            status: "current",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CurrencyValueWithStatusText(
              digitalValue: "1.3603",
              status: "highest",
            ),
          )
        ],
      ),
    );
  }
}
