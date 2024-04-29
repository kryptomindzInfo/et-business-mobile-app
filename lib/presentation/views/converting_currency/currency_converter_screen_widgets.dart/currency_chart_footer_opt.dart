import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class CurrencyChartFooterOpt extends ConsumerWidget {
  final String? image;
  final String? title;
  final VoidCallback? onpress;
  const CurrencyChartFooterOpt(
      {super.key, this.image, this.title, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Column(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(image!), scale: 2),
                color: AppColors.grey.withOpacity(0.6)),
            // child: Center(
            //   child: Image.asset(
            //     image!,
            //     fit: BoxFit.fill,
            //   ),
            // ),
          ),
          5.spaceY,
          Text(
            title!,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.white),
          )
        ],
      ),
    );
  }
}
