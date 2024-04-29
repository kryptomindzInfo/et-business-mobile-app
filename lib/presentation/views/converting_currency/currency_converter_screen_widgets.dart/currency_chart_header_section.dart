import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/rates_tab_section/currency_exchange_converter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyChartHeader extends ConsumerWidget {
  const CurrencyChartHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigation.pushNamed(CurrencyExchangeConverterScreen.routeName);
          },
          child: Container(
            width: 230,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GBP",
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 21,
                      color: AppColors.white,
                      fontWeight: FontWeight.normal),
                ),
                10.spaceX,
                Image.asset(
                  AppAssets.greenrightarrow,
                  height: 15,
                  color: AppColors.yellowGreen,
                ),
                10.spaceX,
                Text(
                  "USD",
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 21,
                      color: AppColors.white,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
