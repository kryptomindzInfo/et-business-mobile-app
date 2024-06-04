import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
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
  final Widget? trailing;
  const InfoIconTitleSubtitleText(
      {super.key,
      required this.imageicon,
      required this.title,
      required this.subtitle,
      this.onpress,
      this.trailing});

  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconContainer(
              height: 34,
              width: 34,
              bgColor: AppColors.tealColor,
              image: imageicon,
            ),
            SizedBox(width: 20), // Replacing 20.spaceX for clarity
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
                ],
              ),
            ),
            if (trailing != null)
              SizedBox(
                height: 34, // Same height as IconContainer
                child: Align(
                  alignment: Alignment.center,
                  child: trailing!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
