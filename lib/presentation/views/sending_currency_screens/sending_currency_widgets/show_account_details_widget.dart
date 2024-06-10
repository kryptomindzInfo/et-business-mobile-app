import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowAccountDetailsWidget extends ConsumerWidget {
  final String title;
  final String? subTitle;
  final TextStyle? subTitleStyle;
  final Color? color;
  final BoxBorder? border;
  final Color? titleColor;
  final bool exclamationMark;
  final EdgeInsetsGeometry? padding;

  const ShowAccountDetailsWidget(
      {super.key,
      required this.title,
      this.subTitle,
      this.subTitleStyle,
      this.color,
      this.border,
      this.titleColor,
      this.exclamationMark = false,
      this.padding});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: border ?? Border.all(color: AppColors.tealColor, width: 1),
      ),
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              getTranslated(title, context),
              style: AppTextstyle.bodyTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: titleColor ?? context.theme.colorTheme.whiteColor,
              ),
            ),
            Row(
              children: [
                if (exclamationMark)
                  Image.asset(
                    AppAssets.excalamation,
                    height: 13,
                    width: 13,
                    color: context.theme.colorTheme.yellowToGreen,
                  ),
                8.spaceX,
                Text(
                  getTranslated(subTitle ?? '', context),
                  style: subTitleStyle ??
                      AppTextstyle.bodyTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: context.theme.colorTheme.whiteColor,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
