import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/essential_icon_text.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/my_apps_tab_widgets/payment_icon_text.dart';
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
      border: Border.all(
        color: context.theme.colorTheme.transparentToTeal,
      ),
      borderRadius: 12,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslated("Payments", context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: AppColors.grassGreen,
                overflow: TextOverflow.clip),
          ),
          28.spaceY,
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PaymentIconWithTitle(
                imageicon: AppAssets.transfer,
                title: "Transfer",
                iconColor: context.theme.colorTheme.bottomSheetColor,
              ),
              40.spaceX,
              PaymentIconWithTitle(
                imageicon: AppAssets.request,
                title: "Request",
                iconColor: context.theme.colorTheme.bottomSheetColor,
              ),
              40.spaceX,
              PaymentIconWithTitle(
                imageicon: AppAssets.schedule,
                title: "Scheduled",
                iconColor: context.theme.colorTheme.bottomSheetColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
