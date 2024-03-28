import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_pair_card_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyPairCard extends ConsumerWidget {
  const CurrencyPairCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 91,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.white),
          color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CurrencyPairCardText(
            title: "1 GBP",
            subtitle: "British Pound",
          ),
          Image.asset(
            AppAssets.chartimage,
            height: 35,
          ),
          CurrencyPairCardText(
            title: "1.3603",
            subtitle: "US Dollar . USD",
          ),
        ],
      ),
    );
  }
}
