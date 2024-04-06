import 'package:etbank_business_app/constants/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
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
      margin: EdgeInsets.only(top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconContainer(
                  image: AppAssets.transactioninfoicon,
                ),
                15.spaceX,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Exchanged to USD",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          color: context.theme.colorTheme.normalTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          color: context.theme.colorTheme.normalTextColor
                              .withOpacity(0.4),
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
                    color: context.theme.colorTheme.normalTextColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "+\$1.36",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    color: context.theme.colorTheme.normalTextColor
                        .withOpacity(0.4),
                    fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
