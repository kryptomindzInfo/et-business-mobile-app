import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../resources/localization/language_constrants.dart';

class FreezeCard extends ConsumerWidget {
  const FreezeCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      border: Border.all(
        color: context.theme.colorTheme.transparentToTeal,
      ),
      borderRadius: 12,
      widget: Row(
        children: [
          const IconContainer(
            height: 34,
            width: 34,
            bgColor: AppColors.tealColor,
            image: AppAssets.freezicon,
          ),
          16.spaceX,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTranslated(
                  "freeze_card",
                  context,
                ),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: context.theme.colorTheme.normalTextColor),
              ),
              Text(
                getTranslated("tap_again_unfreeze", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: context.theme.colorTheme.halfWhiteToGrey),
                overflow: TextOverflow.clip,
              ),
            ],
          )
        ],
      ),
    );
  }
}
