import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_sell_detail_texts.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_sell_green_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../currency_converter_screen_widgets.dart/currency_sell_header.dart';

class CurrencySellScreen extends ConsumerWidget {
  static const String routeName = 'sell_screen';
  const CurrencySellScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              CurrencySellHeader(),
              25.spaceY,
              CommonWhiteFlexibleCard(
                widget: Column(
                  children: [
                    CurrencySellDetailTexts(
                      title: "Price",
                      value: "£1=\$1.3598",
                    ),
                    CurrencySellDetailTexts(
                      title: "Selling",
                      value: "£1",
                    ),
                    CurrencySellDetailTexts(
                      title: "Fee",
                      value: "No Fee",
                    ),
                    CurrencySellDetailTexts(
                      title: "You will recieve",
                      value: "\$1.35",
                    ),
                    CurrencySellDetailTexts(
                      title: "From",
                      value: "GBP",
                    ),
                  ],
                ),
              ),
              25.spaceY,
              CurrencySellGreenCard(),
              100.spaceY,
              PrimaryButton(
                  color: AppColors.primaryColor,
                  minwidth: 280,
                  text: Text(getTranslated("continue", context)),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
