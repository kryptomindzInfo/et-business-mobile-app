import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class MainCardOption extends ConsumerWidget {
  final String image;
  final String title;
  const MainCardOption(this.image, this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mateBlackColor.withOpacity(0.4)),
          child: Center(
            child: Image.asset(image),
          ),
        ),
        Text(
          title,
          style: AppTextstyle.bodyTextStyle(
              fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
