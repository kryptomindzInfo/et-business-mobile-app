import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../common_widgets/icon_container.dart';

class ProfileInfoTextWidget extends ConsumerWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  final Color? subTitleColor;
  final VoidCallback? onpress;
  const ProfileInfoTextWidget(
      {super.key,
      this.image,
      this.title,
      this.onpress,
      this.subTitle,
      this.subTitleColor});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
        child: Row(
          children: [
            IconContainer(
              bgColor: AppColors.tealColor,
              image: image!,
            ),
            15.spaceX,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      color: context.theme.colorTheme.whiteColor,
                      fontWeight: FontWeight.w600),
                ),
                if (subTitle != null) ...{
                  Text(
                    subTitle!,
                    style: AppTextstyle.bodyTextStyle(
                        // fontSize: 16,
                        color: subTitleColor ?? AppColors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                }
              ],
            ),
          ],
        ),
      ),
    );
  }
}
