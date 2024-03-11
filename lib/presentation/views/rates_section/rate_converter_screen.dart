import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rates_screen_widgets.dart/adding_currency_pair_container.dart';
import 'package:etbank_business_app/presentation/views/rates_section/rates_screen_widgets.dart/rates_screen_options.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RatesAndConverterScreen extends ConsumerWidget {
  static const String routeName = "rates_screen";
  const RatesAndConverterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
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
              AddingCurrencyPairContainer(),
              
            ],
          ),
        ),
      ),
    );
  }
}
