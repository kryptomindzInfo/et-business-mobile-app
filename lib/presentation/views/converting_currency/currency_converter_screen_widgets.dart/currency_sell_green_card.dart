import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';

class CurrencySellGreenCard extends ConsumerWidget {
  const CurrencySellGreenCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 46,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Text(
              "To",
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.black.withOpacity(0.5)),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 15,
              ),
              Icon(
                Icons.arrow_forward,
                size: 15,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              "USD",
              style: AppTextstyle.headingTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: AppColors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
