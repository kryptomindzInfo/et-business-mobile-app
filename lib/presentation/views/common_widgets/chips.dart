import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_textstyle.dart';

class Chips extends ConsumerWidget {
  final String? title;
  final String? imageicon;
  final VoidCallback? onpress;
  const Chips({super.key, this.title, this.onpress, this.imageicon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FittedBox(
        child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onpress,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.mateBlackColor),
        child: Row(children: [
          imageicon != null
              ? Image.asset(
                  imageicon!,
                  height: 20,
                )
              : SizedBox(),
          5.spaceX,
          Text(title!,
              style: AppTextstyle.bodyTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.white.withOpacity(0.5)))
        ]),
      ),
    ));
  }
}
