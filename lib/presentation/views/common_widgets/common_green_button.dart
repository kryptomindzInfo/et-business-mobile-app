import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_textstyle.dart';

class CommonGreenButton extends ConsumerWidget {
  final String? title;
  final String? imageIcon;
  final VoidCallback? onpress;
  final double? imageHeight;
  const CommonGreenButton(
      {super.key, this.title, this.imageIcon, this.onpress, this.imageHeight});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: FittedBox(
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(color: AppColors.white),
              color: AppColors.primaryColor),
          margin: const EdgeInsets.only(right: 5),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 11, right: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (imageIcon != null)
                    Image.asset(
                      imageIcon!,
                      height: imageHeight ?? 25,
                    ),
                  if (title != null) 8.spaceX,
                  if (title != null)
                    Text(
                      title!,
                      style: AppTextstyle.bodyTextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
