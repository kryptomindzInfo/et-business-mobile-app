import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/hub_section/hub_section_widgets/upgrade_section/upgrade_screens.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../constants/app_colors.dart';

class MyAppTabMainCard extends ConsumerWidget {
  const MyAppTabMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 308,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.colorTheme.transparentToGreen,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.tealColor),
        // color: const Color.fromRGBO(0, 255, 157, 1),
      ),
      child: Column(
        children: [
          62.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      color: AppColors.white,
                      AppAssets.gifticon,
                      height: 22,
                    ),
                    5.spaceX,
                    Text(
                      getTranslated("1_month_free", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white),
                    )
                  ],
                ),
                // Image.asset(
                //   AppAssets.planets,
                //   height: 130,
                // )
              ],
            ),
          ),
          30.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              getTranslated("upgrade_plane", context),
              style: AppTextstyle.headingTextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  overflow: TextOverflow.clip),
            ),
          ),
          30.spaceY,
          Container(
            // height: 84,
            decoration: BoxDecoration(
                color: context.theme.colorTheme.blackishToYellow,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      getTranslated("enjoy_higher_limits", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: context.theme.colorTheme.whiteColor,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  CommonButton(
                    width: 100,
                    title: getTranslated("upgrade", context),
                    mainButtonColor: context.theme.colorTheme.yellowToBlackish,
                    titleColor: context.theme.colorTheme.blackishToYellow,
                    onpress: () {
                      Navigation.pushNamed(UpgradeScreens.routeName);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
