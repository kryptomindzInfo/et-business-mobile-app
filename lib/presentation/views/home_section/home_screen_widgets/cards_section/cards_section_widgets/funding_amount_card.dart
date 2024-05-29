import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FundingAmountCard extends ConsumerWidget {
  const FundingAmountCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      border: Border.all(
        color: context.theme.colorTheme.transparentToTeal,
      ),
      borderRadius: 12,
      widget: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getTranslated("spend_controls", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: context.theme.colorTheme.normalTextColor),
              ),
              Text(
                getTranslated("see_all", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: context.theme.colorTheme.grassGreen),
              )
            ],
          ),
          30.spaceY,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  AppAssets.copylink,
                  height: 12,
                  color: context.theme.colorTheme.indigoToColor,
                ),
              ),
              16.spaceX,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getTranslated(
                      "funding_account",
                      context,
                    ),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorTheme.normalTextColor),
                  ),
                  Text(
                    getTranslated("all_accounts", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: context.theme.colorTheme.normalTextColor),
                    overflow: TextOverflow.clip,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
