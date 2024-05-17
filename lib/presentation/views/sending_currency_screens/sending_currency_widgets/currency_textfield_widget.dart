import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyTextFieldWidget extends ConsumerWidget {
  final EdgeInsetsGeometry? padding;
  const CurrencyTextFieldWidget({super.key, this.padding});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        // color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.tealColor, width: 1),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.fromLTRB(12, 0, 8, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getTranslated('gbp', context),
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 20, color: AppColors.white),
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
                border: Border.all(width: 0, color: AppColors.transparent),
                hintText: '£0',
                style: const TextStyle(color: AppColors.white),
                hintStyle: AppTextstyle.headingTextStyle(
                    color: AppColors.white, fontSize: 22),
                keyboardType: TextInputType.number,
                // bottomContentPadding: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
