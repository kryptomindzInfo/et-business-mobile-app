import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonGreyButton extends ConsumerWidget {
  final String? title;
  final String? imageIcon;
  final VoidCallback? onpress;
  final double? imageIconHeight;
  final Color? titleColor;
  final Color? buttonColor;
  final double? borderRadius;
  const CommonGreyButton(
      {super.key,
      this.title,
      this.imageIcon,
      this.onpress,
      this.imageIconHeight,
      this.titleColor,
      this.buttonColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: FittedBox(
        child: Container(
          height: 32,
          // width: 117,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 64),
              color: buttonColor ?? context.theme.colorTheme.buttonColor
              // border: Border.all(color: AppColors.primaryColor)
              ),

          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Row(
                children: [
                  if (imageIcon != null)
                    Image.asset(
                      imageIcon!,
                      height: imageIconHeight ?? 15,
                      color: context.theme.colorTheme.whiteAndBlack,
                    ),
                  if (title != null) 8.spaceX,
                  if (title != null)
                    Text(
                      " ${title!}   ",
                      style: AppTextstyle.bodyTextStyle(
                          color: titleColor ??
                              context.theme.colorTheme.whiteAndBlack,
                          fontSize: 14,
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
