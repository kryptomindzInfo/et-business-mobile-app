import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShareLinkButton extends ConsumerWidget {
  final VoidCallback? onpress;
  const ShareLinkButton({super.key, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 39,
        width: 120,
        decoration: BoxDecoration(
            color: AppColors.yellowGreen,
            borderRadius: BorderRadius.circular(70)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.shareicon,
                height: 17,
              ),
              5.spaceX,
              Text(
                getTranslated("share_link", context),
                style: AppTextstyle.bodyTextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
