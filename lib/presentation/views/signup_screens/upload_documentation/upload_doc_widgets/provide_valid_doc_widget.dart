import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderValidDocWidget extends ConsumerWidget {
  const ProviderValidDocWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonWhiteFlexibleCard(
      padding: const EdgeInsets.only(left: 16, right: 10, bottom: 20, top: 20),
      widget: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      getTranslated(
                          "please_provide_valid_shareholder_structure",
                          context),
                      style: AppTextstyle.bodyTextStyle(
                          color: context.theme.colorTheme.normalTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.clip),
                    ),
                    8.spaceY,
                    Text(
                      getTranslated(
                          "please_provide_valid_shareholder_structure_description",
                          context),
                      style: AppTextstyle.bodyTextStyle(
                          color: context.theme.colorTheme.whiteColor
                              .withOpacity(0.8),
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.clip),
                    ),
                  ],
                ),
              ),
              Image.asset(
                AppAssets.erroricon,
                scale: 2,
              )
            ],
          )
        ],
      ),
    );
  }
}
