import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'quantity_description_widget.dart';

class CurrencyTextFieldWidget extends ConsumerWidget {
  const CurrencyTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 0, 8, 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getTranslated('gbp', context),
                  style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                  ),
                ),
                // 5.spaceY,
                // Row(
                //   children: [
                //     Text(
                //       '£1',
                //       style: AppTextstyle.headingTextStyle(
                //           fontSize: 8, color: AppColors.grey),
                //     ),
                //     4.spaceX,
                //     Image.asset(
                //       AppAssets.iconArrowDownBlack,
                //       width: 4,
                //       height: 2.2,
                //     )
                //   ],
                // ),
              ],
            ),
            SizedBox(
              width: 50,
              child: TextFieldWidget(
                hintText: '£0',
                style: TextStyle(color: AppColors.black),
                hintStyle: AppTextstyle.headingTextStyle(
                    color: AppColors.grey, fontSize: 22),
                bottomContentPadding: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
