import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/custom_radio_button_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RolesWithDetails extends ConsumerWidget {
  final String? title;
  final String? subtitile;
  final bool? isSelected;
  final VoidCallback? onpress;
  const RolesWithDetails(
      {super.key, this.isSelected, this.onpress, this.title, this.subtitile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: CustomRadioButtonWidget(
                    isSelected: isSelected!, onTap: onpress),
              ),
              15.spaceX,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getTranslated(title!, context),
                    style: AppTextstyle.headingTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorTheme.whiteColor),
                  ),
                  2.spaceY,
                  Text(
                    getTranslated(subtitile!, context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: context.theme.colorTheme.normalTextColor
                            .withOpacity(0.6)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 28,
            width: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.grassGreen),
            child: Center(
              child: Text(
                getTranslated("view", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
