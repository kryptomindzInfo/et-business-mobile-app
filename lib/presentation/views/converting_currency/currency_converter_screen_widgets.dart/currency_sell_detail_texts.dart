import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';

class CurrencySellDetailTexts extends ConsumerWidget {
  final String? title;
  final String? value;
  final bool exclamationMark;
  final TextStyle? valueStyle;
  const CurrencySellDetailTexts(
      {super.key,
      this.title,
      this.value,
      this.exclamationMark = false,
      this.valueStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: AppTextstyle.headingTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.black.withOpacity(0.5)),
          ),
          Row(
            children: [
              if (exclamationMark)
                Image.asset(
                  AppAssets.excalamation,
                  height: 13,
                  width: 13,
                  color: context.theme.colorTheme.greenToTeal,
                ),
              8.spaceX,
              Text(
                value!,
                style: valueStyle ??
                    AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
