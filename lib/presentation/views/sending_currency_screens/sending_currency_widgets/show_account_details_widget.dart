import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
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

  const ShowAccountDetailsWidget(
      {super.key,
      required this.title,
      this.subTitle,
      this.subTitleStyle,
      this.color,
      this.border,
      this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: border ?? Border.all(color: AppColors.tealColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(11, 14, 14, 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              getTranslated(title, context),
              style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                color: titleColor ?? context.theme.colorTheme.whiteColor,
              ),
            ),
            Text(
              getTranslated(subTitle ?? '', context),
              style: subTitleStyle ??
                  AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color: context.theme.colorTheme.whiteColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
