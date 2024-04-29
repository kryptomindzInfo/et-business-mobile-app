import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';

class SeeAllCommonWidget extends ConsumerWidget {
  final String title;
  final bool isSeeAll;
  const SeeAllCommonWidget(this.title, this.isSeeAll, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextstyle.bodyTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.white),
        ),
        isSeeAll
            ? Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  "See All",
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
