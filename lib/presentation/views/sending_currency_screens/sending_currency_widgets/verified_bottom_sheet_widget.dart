import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifiedBottomSheetWidget extends ConsumerWidget {
  final Widget title;
  final Widget description;
  final Widget? spaceBtw;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const VerifiedBottomSheetWidget(
      {super.key,
      required this.title,
      required this.description,
      this.height,
      this.color,
      this.padding,
      this.spaceBtw});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: height ?? 315,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color ?? context.theme.colorTheme.secondaryColor,
      ),
      child: Column(
        children: [
          50.spaceY,
          Image.asset(
            AppAssets.checkout,
            height: 80,
          ),
          26.spaceY,
          title,
          spaceBtw ?? 34.spaceY,
          Padding(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 70),
            child: description,
          ),
        ],
      ),
    );
  }
}
