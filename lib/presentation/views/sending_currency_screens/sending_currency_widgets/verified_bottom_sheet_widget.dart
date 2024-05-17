import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifiedBottomSheetWidget extends ConsumerWidget {
  final Widget title;
  final Widget description;
  final double? height;
  const VerifiedBottomSheetWidget(
      {super.key, required this.title, required this.description, this.height});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height ?? 311,
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
          20.spaceY,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: description,
          ),
        ],
      ),
    );
  }
}
