import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconContainer extends ConsumerWidget {
  final String? image;
  const IconContainer({super.key, this.image});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.tealColor,
          image: DecorationImage(image: AssetImage(image!), scale: 2)),
    );
  }
}
