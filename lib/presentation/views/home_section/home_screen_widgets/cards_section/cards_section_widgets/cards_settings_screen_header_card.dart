import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_textstyle.dart';

class SettingsScreenHeaderCard extends ConsumerWidget {
  const SettingsScreenHeaderCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      borderRadius: 12,
      widget: Row(
        children: [
          Image.asset(
            AppAssets.greencardForslider,
            height: 35,
          ),
          10.spaceX,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Disposable Virtual Card",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: context.theme.colorTheme.normalTextColor),
              ),
              Text(
                "£10,000",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: context.theme.colorTheme.normalTextColor),
                overflow: TextOverflow.clip,
              ),
            ],
          )
        ],
      ),
    );
  }
}
