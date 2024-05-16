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
  final Widget? buttonPadding;
  const BlackCommonBottomSheet(
      {super.key,
      this.title,
      this.image,
      this.buttonTitle,
      this.subtitle,
      this.buttonPadding});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 750,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            36.spaceY,
            const Icon(
              Icons.close,
              color: AppColors.white,
            ),
            42.spaceY,
            HeaderIconWithTitle(
              // imageicon: AppAssets.crossicon,
              title: getTranslated(title!, context),
              spaceBtw: 10,
              description: getTranslated(subtitle!, context),
              edgeinsets: const EdgeInsets.only(top: 20),
            ),
            50.spaceY,
            Center(
              child: Image.asset(
                image!,
                height: 250,
              ),
            ),
            buttonPadding ?? 80.spaceY,
            Center(
              child: CommonButton(
                title: getTranslated(buttonTitle!, context),
                mainButtonColor: AppColors.yellowGreen,
                titleColor: AppColors.black,
                width: 288,
              ),
            )
          ],
        ),
      ),
    );
  }
}
