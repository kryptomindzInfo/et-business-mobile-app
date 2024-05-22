import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';
import '../../../common_widgets/white_flexible_card.dart';
import '../../signup_widgets/common_icon_title_icon_button.dart';

class OtherWidget extends ConsumerWidget {
  const OtherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            getTranslated("other", context),
            style: AppTextstyle.bodyTextStyle(
                color: context.theme.colorTheme.normalTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        5.spaceY,
        CommonWhiteFlexibleCard(
          color: context.theme.colorTheme.businessDetailsContainer,
          widget: Column(
            children: [
              CommonIconTitleIconButton(
                iconImage: AppAssets.letterhead,
                title: getTranslated("article_association", context),
                onpress: () {},
                isForwardIcon: true,
              )
            ],
          ),
        )
      ],
    );
  }
}
