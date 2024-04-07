import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlackCommonBottomSheet extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  final String? image;
  final String? buttonTitle;
  const BlackCommonBottomSheet(
      {super.key, this.title, this.image, this.buttonTitle, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 650,
      width: double.infinity,
      color: AppColors.black,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            HeaderIconWithTitle(
              imageicon: AppAssets.crossicon,
              title: getTranslated(title!, context),
              description: getTranslated(subtitle!, context),
              edgeinsets: const EdgeInsets.only(top: 20),
            ),
            50.spaceY,
            Image.asset(
              image!,
              height: 250,
            ),
            80.spaceY,
            CommonButton(
              title: getTranslated(buttonTitle!, context),
              mainButtonColor: AppColors.primaryColor,
              titleColor: AppColors.black,
              width: 280,
            )
          ],
        ),
      ),
    );
  }
}
