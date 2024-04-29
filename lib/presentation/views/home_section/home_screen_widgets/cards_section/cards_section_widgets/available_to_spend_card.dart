import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/common_transparent_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AvailableToSpendCard extends ConsumerWidget {
  const AvailableToSpendCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "£1 ${getTranslated(
                  "available_to_spend",
                  context,
                )}",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: context.theme.colorTheme.normalTextColor),
              ),
              Image.asset(
                AppAssets.markicon,
                height: 16,
                color: context.theme.colorTheme.indigoToColor,
              )
            ],
          ),
          10.spaceY,
          Text(
            getTranslated("card_low_balance", context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: context.theme.colorTheme.normalTextColor),
            overflow: TextOverflow.clip,
          ),
          15.spaceY,
          CommonGreyButton(
            title: getTranslated("resolve", context),
          )
        ],
      ),
    );
  }
}
