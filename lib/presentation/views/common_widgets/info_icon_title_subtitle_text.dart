import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';
import '../../../resources/localization/language_constrants.dart';

class InfoIconTitleSubtitleText extends ConsumerWidget {
  final String imageicon;
  final String title;
  final String subtitle;
  final VoidCallback? onpress;
  const InfoIconTitleSubtitleText(
      {super.key,
      required this.imageicon,
      required this.title,
      required this.subtitle,
      this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageicon,
              height: 35,
            ),
            20.spaceX,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
                Container(
                  height: 30,
                  width: 200,
                  child: Text(
                    subtitle,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black.withOpacity(0.4),
                        overflow: TextOverflow.clip),
                  ),
                ),
                // 20.spaceY
              ],
            ),
          ],
        ),
      ),
    );
  }
}
