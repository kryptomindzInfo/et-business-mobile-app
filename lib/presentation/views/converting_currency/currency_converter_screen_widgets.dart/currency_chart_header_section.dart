import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyChartHeader extends ConsumerWidget {
  const CurrencyChartHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            // width: 120,
            child: const HeaderIconWithTitle(
              imageicon: AppAssets.arrowLeft,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: InkWell(
              onTap: () {
                Navigation.pushNamed("exchange_screen");
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
            ),
          ),
        )
      ],
    );
  }
}
