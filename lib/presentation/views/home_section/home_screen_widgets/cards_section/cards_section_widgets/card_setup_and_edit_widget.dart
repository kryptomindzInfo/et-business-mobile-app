import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:flutter/material.dart';
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
                color: AppColors.white),
          ),
        ),
        10.spaceY,
        CommonWhiteFlexibleCard(
          widget: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.freezicon,
                    height: 35,
                  ),
                  10.spaceX,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        getTranslated(
                          "expense_reporting",
                          context,
                        ),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        getTranslated("attach_receipts", context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
