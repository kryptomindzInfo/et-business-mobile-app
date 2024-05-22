import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_exchange_textfield.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/currency_sell_screen.dart';
import 'package:etbank_business_app/providers/currency_coverter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/app_common_appbar.dart';

class CurrencyExchangeConverterScreen extends ConsumerWidget {
  static const String routeName = 'exchange_screen';
  const CurrencyExchangeConverterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const HeaderIconWithTitle(
                  // imageicon: AppAssets.arrowLeft,
                  title: "SELL GBP",
                  spaceBtw: 6,
                  greenDescription: "£1 = 1.3601",
                  fontsize: 31,
                ),
                17.spaceY,
                Stack(
                  children: [
                    Column(
                      children: [
                        10.spaceY,
                        CurrencyExchangeTextfield(
                          controller: ref
                              .watch(currencyScreenProvider)
                              .firstCurrencyController,
                        ),
                        5.spaceY,
                        CurrencyExchangeTextfield(
                          controller: ref
                              .watch(currencyScreenProvider)
                              .secondCurrencyController,
                        ),
                        50.spaceY,
                      ],
                    ),
                    Positioned(
                      left: 250,
                      top: 95,
                      child: IconContainer(
                        bgColor: context.theme.colorTheme.yellowToGreen,
                        image: AppAssets.currencyExchange,
                        scale: 1,
                      ),
                      //  Image.asset(
                      //   AppAssets.convertericon,
                      //   height: 32,
                      //   color: context.theme.colorTheme.yellowToGreen,
                      // ),
                    ),
                  ],
                ),
                PrimaryButton(
                    minwidth: 288,
                    color:
                        ref.watch(currencyScreenProvider).activateButton == true
                            ? context.theme.colorTheme.yellowGreenColor
                            : AppColors.yellowGreen,
                    text: Text(
                      "Review Order",
                      style: AppTextstyle.bodyTextStyle(
                        color: context.theme.colorTheme.blackColor,
                      ),
                    ),
                    onPressed: () {
                      Navigation.pushNamed(CurrencySellScreen.routeName);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
