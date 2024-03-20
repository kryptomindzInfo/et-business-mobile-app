import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifiedBottomSheetWidget extends ConsumerWidget {
  final Widget title;
  final Widget description;
  const VerifiedBottomSheetWidget(
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
          title,
          // Text(
          //   title,
          //   style: AppTextstyle.bodyTextStyle(
          //       fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          20.spaceY,
          description,
          // Text(
          //   description,
          //   textAlign: TextAlign.center,
          //   style: AppTextstyle.bodyTextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w500,
          //       overflow: TextOverflow.clip),
          // ),
        ],
      ),
    );
  }
}
