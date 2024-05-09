import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../common_widgets/icon_container.dart';

class ProfileInfoTextWidget extends ConsumerWidget {
  final String? image;
  final String? title;
  final VoidCallback? onpress;
  const ProfileInfoTextWidget(
      {super.key, this.image, this.title, this.onpress});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 10),
        child: Row(
          children: [
            IconContainer(
              image: image!,
            ),
            15.spaceX,
            Text(
              title!,
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  color: AppColors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
