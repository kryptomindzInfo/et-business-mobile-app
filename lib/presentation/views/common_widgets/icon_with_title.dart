import 'package:etbank_business_app/constants/icon_container.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';

class IconWithTitle extends ConsumerWidget {
  final String imageicon;
  final String title;
  final VoidCallback? onpress;
  final Color? titleColor;
  const IconWithTitle(
      {super.key,
      required this.imageicon,
      required this.title,
      this.onpress,
      this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconContainer(
              image: imageicon,
            ),
            15.spaceX,
            Text(
              title,
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: titleColor!),
            ),
          ],
        ),
      ),
    );
  }
}
