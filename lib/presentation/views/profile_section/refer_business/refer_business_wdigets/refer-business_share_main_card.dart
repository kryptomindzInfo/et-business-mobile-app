import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/constants/icon_container.dart';
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
      height: 109,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Colors.transparent,
          border: Border.all(color: AppColors.tealColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconContainer(
            image: AppAssets.contactpermission,
          ),
          10.spaceX,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getTranslated("enable_contact_permission", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.yellowGreen),
              ),
              Text(
                getTranslated("quickly_invite_contact", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
