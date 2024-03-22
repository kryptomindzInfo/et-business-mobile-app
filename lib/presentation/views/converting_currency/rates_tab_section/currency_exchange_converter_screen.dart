import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_exchange_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyExchangeConverterScreen extends ConsumerWidget {
  static const String routeName = 'exchange_screen';
  const CurrencyExchangeConverterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              HeaderIconWithTitle(
                imageicon: AppAssets.arrowLeft,
                title: "SELL GBP",
                greenDescription: "£1 = 1.3601",
                fontsize: 31,
              ),
              10.spaceY,
              CurrencyExchangeTextfield(),
              10.spaceY,
              CurrencyExchangeTextfield(),
              50.spaceY,
              PrimaryButton(
                  minwidth: 288,
                  color: AppColors.primaryColor,
                  text: Text("Review Order"),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
