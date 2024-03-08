import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import 'home_screen_main_card_options.dart';

class HomeMainCard extends ConsumerWidget {
  const HomeMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 196,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.white),
          color: AppColors.primaryColor),
      child: Container(
        margin: EdgeInsets.only(left: 25, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "£1",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 48, fontWeight: FontWeight.w700),
                        ),
                        Image.asset(
                          AppAssets.dropdownicon,
                          height: 22,
                        )
                      ],
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.headingTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mateBlackColor.withOpacity(0.4)),
                    )
                  ],
                ),
                Image.asset(
                  AppAssets.ukflag,
                  height: 45,
                )
              ],
            ),
            20.spaceY,
            Container(
              margin: EdgeInsets.only(left: 35, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MainCardOption(AppAssets.sendicon, "Send"),
                  MainCardOption(AppAssets.requesticon, "Request"),
                  MainCardOption(AppAssets.moreicon, "More")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
