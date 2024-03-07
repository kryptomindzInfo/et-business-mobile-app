import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class InfoCardCommonWidget extends ConsumerWidget {
  final Widget? child;
  const InfoCardCommonWidget({super.key, this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: AppColors.tealColor,
            border: Border.all(color: AppColors.white)),
        child: child);
  }
}
