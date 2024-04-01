import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/adding_currency_pair_container.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/rates_tab_options.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/currency_coverter_provider.dart';

class ConverterCurrencyScreen extends ConsumerWidget {
  static const String routeName = "converter_currency_screen";
  const ConverterCurrencyScreen({super.key});

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
                title: getTranslated("rates", context),
              ),
              20.spaceY,
              RatesScreenOptionsWidget(),
              20.spaceY,
              ref
                  .watch(currencyScreenProvider)
                  .selectedCurrencyConverterTabWidget
              // AddingCurrencyPairContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
