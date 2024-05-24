import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_widgets/cards_section/cards_section_widgets/settings_info_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_textstyle.dart';
import '../../../../../../resources/localization/language_constrants.dart';

class CardSetupAndEditWidget extends ConsumerWidget {
  const CardSetupAndEditWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            getTranslated(
              "settings",
              context,
            ),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: context.theme.colorTheme.normalTextColor),
          ),
        ),
        16.spaceY,
        CommonWhiteFlexibleCard(
          color: context.theme.colorTheme.businessDetailsContainer,
          border: Border.all(
            color: context.theme.colorTheme.transparentToTeal,
          ),
          borderRadius: 12,
          widget: Column(
            children: [
              SettingsInfoText(
                title: getTranslated("expense_reporting", context),
                description: getTranslated("attach_receipts", context),
                isButton: true,
                imageIcon: AppAssets.freezicon,
              ),
              32.spaceY,
              SettingsInfoText(
                title: getTranslated("change_card_name", context),
                description: "${getTranslated("current_name", context)}:",
                isButton: false,
                imageIcon: AppAssets.editicon,
              ),
              32.spaceY,
              SettingsInfoText(
                title: getTranslated("Terminate card", context),
                description:
                    "${getTranslated("Card will be deactivated but stay in your account", context)}:",
                isButton: false,
                imageIcon: AppAssets.deleteicon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
