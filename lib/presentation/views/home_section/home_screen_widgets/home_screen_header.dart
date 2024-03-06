import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';

class HomeScreenHeader extends ConsumerWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image:
                    DecorationImage(image: AssetImage(AppAssets.profileicon)),
                border: Border.all(color: Colors.white)),
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  AppAssets.charticon,
                  height: 25,
                ),
                20.spaceX,
                Image.asset(
                  AppAssets.notificationicon,
                  height: 25,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
