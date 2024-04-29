import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddAccountsBSheaderSection extends ConsumerWidget {
  const AddAccountsBSheaderSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          getTranslated("accounts", context),
          style: AppTextstyle.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
        ),
        Container(
          height: 35,
          width: 78,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              color: context.theme.colorTheme.buttonColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.plusicon,
                height: 17,
              ),
              5.spaceX,
              Text(
                "New",
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color: context.theme.colorTheme.blackColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ],
    );
  }
}
