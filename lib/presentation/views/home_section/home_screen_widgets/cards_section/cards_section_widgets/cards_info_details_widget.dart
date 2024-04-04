import 'package:etbank_business_app/constants/app_api_paths.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_textstyle.dart';

class CardsInfoDetailsWidget extends ConsumerWidget {
  final String? image;
  final String? title;
  final String? subtitle;
  final VoidCallback? onpress;
  const CardsInfoDetailsWidget(
      {super.key, this.image, this.title, this.subtitle, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        child: Row(
          children: [
            Image.asset(
              image!,
              height: 45,
            ),
            10.spaceX,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.normalTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  subtitle!,
                  style: AppTextstyle.bodyTextStyle(
                      color: AppColors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
