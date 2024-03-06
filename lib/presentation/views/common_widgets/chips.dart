import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_textstyle.dart';

class Chips extends ConsumerWidget {
  final String title;
  const Chips(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FittedBox(
        child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.mateBlackColor),
        child: Row(children: [
          Text(title,
              style: AppTextstyle.bodyTextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.white))
        ]),
      ),
    ));
  }
}
