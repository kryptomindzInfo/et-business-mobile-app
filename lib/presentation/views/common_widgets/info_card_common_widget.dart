import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class InfoCardCommonWidget extends ConsumerWidget {
  final Widget? child;
  final Color? color;
  const InfoCardCommonWidget({super.key, this.child, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: double.infinity,
        // height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: color ?? AppColors.tealColor,
            border: Border.all(color: AppColors.white)),
        child: child);
  }
}
