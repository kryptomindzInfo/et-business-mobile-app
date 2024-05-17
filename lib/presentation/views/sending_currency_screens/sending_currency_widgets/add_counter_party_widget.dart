import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCounterPartyWidget extends ConsumerWidget {
  final Function() onTap;
  final String title;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  const AddCounterPartyWidget(
      {super.key,
      required this.onTap,
      required this.title,
      this.borderRadius,
      this.padding});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.transparent,
          borderRadius: BorderRadius.circular(borderRadius ?? 28),
          border: Border.all(
            color: AppColors.tealColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.fromLTRB(25, 25, 0, 25),
          child: Row(
            children: [
              Image.asset(
                AppAssets.addButton2x,
                height: 34,
                width: 34,
              ),
              16.spaceX,
              Text(
                getTranslated(title, context),
                style: AppTextstyle.headingTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
