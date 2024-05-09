import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReadyToUseBottomSheetWidget extends ConsumerWidget {
  final String title;
  final String description;
  const ReadyToUseBottomSheetWidget(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 311,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28)),
      child: Column(
        children: [
          60.spaceY,
          Image.asset(
            AppAssets.checkout,
            height: 80,
          ),
          20.spaceY,
          Text(
            title,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          20.spaceY,
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.clip),
          )
        ],
      ),
    );
  }
}
