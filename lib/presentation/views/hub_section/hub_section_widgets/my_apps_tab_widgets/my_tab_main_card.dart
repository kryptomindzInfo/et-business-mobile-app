import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
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
      height: 308,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.white),
          color: const Color.fromRGBO(0, 255, 157, 1)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.gifticon,
                        height: 22,
                      ),
                      5.spaceX,
                      Text(
                        getTranslated("1_month_free", context),
                        style: AppTextstyle.bodyTextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  AppAssets.planets,
                  height: 130,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              getTranslated("upgrade_plane", context),
              style: AppTextstyle.headingTextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.clip),
            ),
          ),
          Container(
            height: 84,
            decoration: BoxDecoration(
                color: AppColors.blackish,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28))),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    child: Text(
                      getTranslated("enjoy_higher_limits", context),
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: AppColors.white.withOpacity(0.7),
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  CommonButton(
                    width: 100,
                    title: getTranslated("upgrade", context),
                    mainButtonColor: AppColors.primaryColor,
                    titleColor: AppColors.black,
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
