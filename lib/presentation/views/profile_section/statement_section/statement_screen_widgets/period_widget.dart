import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectPeriodCalenderWidget extends ConsumerWidget {
  final String? title;
  final String? date;
  const SelectPeriodCalenderWidget({super.key, this.title, this.date});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 71,
      width: 150,
      // margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.theme.colorTheme.yellowGreenColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12, color: AppColors.black.withOpacity(0.5)),
              ),
              Text(
                date!,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16, color: AppColors.black),
              ),
            ],
          ),
          Image.asset(
            AppAssets.calendericon,
            height: 25,
          )
        ],
      ),
    );
  }
}
