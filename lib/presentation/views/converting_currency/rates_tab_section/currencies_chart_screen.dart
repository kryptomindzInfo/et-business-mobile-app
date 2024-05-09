import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_chart_footer_opt.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_chart_header_section.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_chart_white_main_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CurrenciesChartScreen extends ConsumerWidget {
  static const String routeName = "Currency_chart_Screen";
  final List<ChartData> chartData = [
    ChartData(2010, 35),
    ChartData(2011, 13),
    ChartData(2012, 34),
    ChartData(2013, 27),
    ChartData(2014, 40),
    ChartData(2015, 1),
    ChartData(2016, 45),
    ChartData(2017, 55),
    ChartData(2018, 3),
    ChartData(2019, 40),
    ChartData(2020, 10),
  ];
  CurrenciesChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: CommonAppBar(
          // etBankLogo: true,
          widget: CurrencyChartHeader(),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  20.spaceY,
                  const CurrencyChartWhiteCard(),
                ],
              ),
            ),
            40.spaceY,
            SfCartesianChart(series: <CartesianSeries>[
              // Renders spline chart
              SplineSeries<ChartData, int>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ]),
            40.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CurrencyChartFooterOpt(
                  title: getTranslated("exchange", context),
                  image: AppAssets.currencyexchangeicon,
                ),
                70.spaceX,
                CurrencyChartFooterOpt(
                  title: getTranslated("delete", context),
                  image: AppAssets.currencydelete,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}
