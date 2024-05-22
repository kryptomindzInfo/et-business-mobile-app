import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/essential_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';

class MyApptabPaymentWidget extends ConsumerWidget {
  const MyApptabPaymentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      color: context.theme.colorTheme.businessDetailsContainer,
      borderRadius: 12,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslated("Payments", context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.darkGreen,
                overflow: TextOverflow.clip),
          ),
          15.spaceY,
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const EssentialIconWithTitle(
                imageicon: AppAssets.hubTransfer,
                title: "Transfer",
              ),
              40.spaceX,
              const EssentialIconWithTitle(
                imageicon: AppAssets.hubRequest,
                title: "Request",
              ),
              40.spaceX,
              const EssentialIconWithTitle(
                imageicon: AppAssets.hubSchedule,
                title: "Scheduled",
              ),
            ],
          )
        ],
      ),
    );
  }
}
