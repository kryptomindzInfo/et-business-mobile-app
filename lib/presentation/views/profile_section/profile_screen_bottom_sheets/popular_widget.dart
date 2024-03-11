import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_textstyle.dart';

class PopularWidget extends ConsumerWidget {
  const PopularWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.popularicon,
          height: 30,
        ),
        5.spaceY,
        Text(
          "Popular",
          style: AppTextstyle.headingTextStyle(
              fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
