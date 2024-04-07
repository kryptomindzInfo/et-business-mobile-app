import 'package:etbank_business_app/constants/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_textstyle.dart';

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
        // color: AppColors.white,
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconContainer(
              image: imageicon,
            ),
            20.spaceX,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorTheme.normalTextColor),
                  ),
                  Text(
                    subtitle,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorTheme.normalTextColor,
                        overflow: TextOverflow.clip),
                  ),
                  // 20.spaceY
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
