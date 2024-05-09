import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class ProfileScreenMainCard extends ConsumerWidget {
  const ProfileScreenMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            getTranslated('help', context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: context.theme.colorTheme.normalTextColor),
          ),
        ),
        10.spaceY,
        Container(
          height: 148,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: AppColors.tealColor),
            color: AppColors.transparent,
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    const IconContainer(
                      image: AppAssets.communicationicon,
                    ),
                    20.spaceX,
                    Text(
                      getTranslated('help', context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: context.theme.colorTheme.normalTextColor),
                    ),
                  ],
                ),
                20.spaceY,
                Row(
                  children: [
                    const IconContainer(
                      image: AppAssets.singlewhiteperson,
                    ),
                    20.spaceX,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getTranslated('account_manager', context),
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: context.theme.colorTheme.normalTextColor),
                        ),
                        Text(
                          getTranslated('get_in_touch', context),
                          style: AppTextstyle.bodyTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: context.theme.colorTheme.iconBgColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
