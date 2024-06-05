import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameCircleWidget extends ConsumerWidget {
  final String leadingText;
  final String name;
  final String? trailingText;
  final String? trailingHintText;
  final Color? color;

  const NameCircleWidget(
      {super.key,
      required this.leadingText,
      required this.name,
      this.trailingText,
      this.trailingHintText,
      this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 18, 20, 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.darkGreen,
                  child: Text(
                    getTranslated(leadingText, context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 18,
                        color: AppColors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                25.spaceX,
                Text(
                  getTranslated(name, context),
                  style: AppTextstyle.bodyTextStyle(
                    color: context.theme.colorTheme.whiteColor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (trailingHintText != null) 20.spaceY,
                if (trailingText != null)
                  Text(
                    getTranslated(trailingText ?? '', context),
                    style: AppTextstyle.bodyTextStyle(
                      color: context.theme.colorTheme.whiteColor,
                      fontSize: 14,
                    ),
                  ),
                if (trailingHintText != null)
                  Text(
                    getTranslated(trailingHintText ?? '', context),
                    textAlign: TextAlign.end,
                    style: AppTextstyle.bodyTextStyle(
                      fontSize: 14,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
