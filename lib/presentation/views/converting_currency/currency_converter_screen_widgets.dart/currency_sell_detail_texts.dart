import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencySellDetailTexts extends ConsumerWidget {
  final String? title;
  final String? value;
  const CurrencySellDetailTexts({super.key, this.title, this.value});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
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
          Text(
            value!,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
