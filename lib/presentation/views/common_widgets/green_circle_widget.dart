import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';

class GreenCircleWidget extends ConsumerWidget {
  final Widget widget;
  const GreenCircleWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CircleAvatar(
      radius: 23,
      backgroundColor: AppColors.darkGreen,
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: widget,
      ),
    );
  }
}
