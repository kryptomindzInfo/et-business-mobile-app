import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsingCardWithApplePay extends ConsumerWidget {
  const UsingCardWithApplePay({super.key});

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
              title: getTranslated("using_card_with_apple_pay", context),
              description: getTranslated("add_card_apple_wallet", context),
              edgeinsets: const EdgeInsets.only(top: 20),
            ),
            50.spaceY,
            Image.asset(AppAssets.silvercardForslider),
            80.spaceY,
            Image.asset(
              AppAssets.addtoapple,
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
