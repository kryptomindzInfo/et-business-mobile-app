
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class InfoTextWidget extends ConsumerWidget {
  const InfoTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.transactioninfoicon,
                  height: 34,
                ),
                Column(
                  children: [
                    Text(
                      "Exchanged to USD",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          color: AppColors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "-£1",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "+\$1.36",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    color: AppColors.white.withOpacity(0.4),
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
