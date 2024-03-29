import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../providers/team_provider.dart';

class AdminscreenListview extends ConsumerWidget {
  const AdminscreenListview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
        itemCount: ref.watch(teamscreenProvider).adminScreenData.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      ref.watch(teamscreenProvider).adminScreenData[index]
                          ["icon"],
                      height: 30,
                    ),
                    15.spaceX,
                    Text(
                      getTranslated(
                          ref.watch(teamscreenProvider).adminScreenData[index]
                              ["title"],
                          context),
                      style: AppTextstyle.headingTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      AppAssets.greencheckround,
                      height: 18,
                    ),
                    15.spaceX,
                    Text(
                      "Full access",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
