import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/onboarding_screens/onboarding_widgets/button_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsingCardWithApplePay extends ConsumerWidget {
  const UsingCardWithApplePay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 730,
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
          children: [
            24.spaceY,
            HeaderIconWithTitle(
              imageicon: AppAssets.crossicon,
              title: getTranslated("using_card_with_apple_pay", context),
              spaceBtw: 20,
              description: getTranslated("add_card_apple_wallet", context),
              edgeinsets: const EdgeInsets.only(top: 20),
            ),
            100.spaceY,
            Image.asset(AppAssets.silvercardForslider),
            90.spaceY,
            Image.asset(
              AppAssets.addtoapple,
              height: 70,
              width: 250,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
