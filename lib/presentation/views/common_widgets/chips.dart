import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/app_textstyle.dart';

class Chips extends ConsumerWidget {
  final String? title;
  final String? imageicon;
  final VoidCallback? onpress;
  final Color? color;
  final Color? titleColor;
  const Chips(
      {super.key,
      this.title,
      this.onpress,
      this.imageicon,
      this.color,
      this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FittedBox(
        child: InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onpress,
      child: Container(
        // width: 100,
        height: 39,
        padding: const EdgeInsets.only(left: 20, right: 20),
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: color ?? context.theme.colorTheme.chipsColor),
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //?
                if (imageicon != null)
                  Image.asset(
                    imageicon!,
                    height: 20,
                  ),
                // : SizedBox(),
                if (imageicon != null) 5.spaceX,
                Text(title ?? "",
                    style: AppTextstyle.bodyTextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: titleColor ?? AppColors.black)),
                if (imageicon != null) 5.spaceX,
              ]),
        ),
      ),
    ));
  }
}
