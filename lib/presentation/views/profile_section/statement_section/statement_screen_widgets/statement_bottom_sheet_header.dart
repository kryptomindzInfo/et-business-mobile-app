import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatementBottomSheetHeader extends ConsumerWidget {
  const StatementBottomSheetHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              getTranslated("done", context),
              style: AppTextstyle.bodyTextStyle(
                  fontSize: 16,
                  color: context.theme.colorTheme.normalTextColor,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              getTranslated("monthly_statement", context),
              style: AppTextstyle.headingTextStyle(
                  fontSize: 24,
                  color: context.theme.colorTheme.normalTextColor,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              AppAssets.iconSearchBlack,
              color: context.theme.colorTheme.normalTextColor,
              height: 18,
            ),
          ],
        ),
        15.spaceY,
        Container(
          height: 2,
          width: double.infinity,
          color: AppColors.grey,
        ),
        20.spaceY,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                getTranslated("et_bank_business", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color: context.theme.colorTheme.normalTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    getTranslated("statement", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: context.theme.colorTheme.normalTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Created on 2/6/2024",
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 12,
                        color: context.theme.colorTheme.normalTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
