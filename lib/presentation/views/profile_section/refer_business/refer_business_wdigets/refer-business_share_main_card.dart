import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_colors.dart';

class ReferBusinessShareLinkMainCard extends ConsumerWidget {
  const ReferBusinessShareLinkMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 25, 0, 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: context.theme.colorTheme.businessDetailsContainer,
          border:
              Border.all(color: context.theme.colorTheme.transparentToTeal)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const IconContainer(
            bgColor: AppColors.tealColor,
            image: AppAssets.contactpermission,
          ),
          15.spaceX,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTranslated("enable_contact_permission", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: context.theme.colorTheme.yellowToGreen),
              ),
              6.spaceY,
              SizedBox(
                width: 200,
                child: Text(
                  getTranslated("quickly_invite_contact", context),
                  style: AppTextstyle.bodyTextStyle(
                      overflow: TextOverflow.clip,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: context.theme.colorTheme.normalTextColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
