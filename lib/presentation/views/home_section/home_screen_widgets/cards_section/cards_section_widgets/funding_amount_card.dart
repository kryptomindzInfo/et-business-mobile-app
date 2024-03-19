import 'package:etbank_business_app/constants/app_api_paths.dart';
import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
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
      widget: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getTranslated("spend_controls", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Text(
                getTranslated("see_all", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.tealColor),
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
                ),
              ),
              10.spaceX,
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
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    getTranslated("all_accounts", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
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
