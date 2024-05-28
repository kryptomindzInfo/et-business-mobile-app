import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';

class UpgradeBottomSheetMainCard extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  const UpgradeBottomSheetMainCard({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 106,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          // color: AppColors.primaryColor,
          color: context.theme.colorTheme.businessDetailsContainer,
          border:
              Border.all(color: context.theme.colorTheme.transparentToTeal)),
      child: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: context.theme.colorTheme.yellowToGreen),
                ),
                // 8.spaceY,
                Text(
                  subtitle!,
                  style: AppTextstyle.headingTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: context.theme.colorTheme.normalTextColor),
                ),
              ],
            ),
            30.spaceX,
            const Expanded(child: PopularWidget())
          ],
        ),
      ),
    );
  }
}
