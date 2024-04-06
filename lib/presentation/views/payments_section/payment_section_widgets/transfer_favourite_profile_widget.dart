import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class TransferFavouriteProfileWidget extends ConsumerWidget {
  final String? title;
  final String? imageIcon;
  const TransferFavouriteProfileWidget({super.key, this.title, this.imageIcon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(
                  imageIcon!,
                  height: 45,
                ),
                15.spaceX,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorTheme.normalTextColor,
                      ),
                    ),
                    Text(
                      "Active",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
          Text(
            "Owner",
            style: AppTextstyle.bodyTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: context.theme.colorTheme.blackAndWhite,
            ),
          ),
        ],
      ),
    );
  }
}
