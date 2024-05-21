import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';
import '../../../../resources/localization/language_constrants.dart';

class ThemeBottomSheet extends ConsumerWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 310,
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: context.theme.colorTheme.bottomSheetColor,
          // border: Border(
          //   left: BorderSide(
          //       width: 1, color: context.theme.colorTheme.borderColor),
          //   top: BorderSide(
          //       width: 1, color: context.theme.colorTheme.borderColor),
          //   right: BorderSide(
          //       width: 1, color: context.theme.colorTheme.borderColor),
          // ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          6.spaceY,
          Container(
            height: 3.5,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: context.theme.colorTheme.whiteColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                Text(
                  getTranslated("choose_theme", context),
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16,
                      color: context.theme.colorTheme.whiteColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          20.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppAssets.light,
                    height: 170,
                  ),
                  Text(
                    getTranslated("light", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: context.theme.colorTheme.whiteColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Radio(
                    value: "light",
                    groupValue: ref.watch(profilescreenProvider).lightDark,
                    onChanged: (val) {
                      ref
                          .read(profilescreenProvider)
                          .changeLightAndDarkTheme(val!);
                    },
                    activeColor: AppColors.primaryColor,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppAssets.dark,
                    height: 170,
                  ),
                  Text(
                    getTranslated("dark", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: context.theme.colorTheme.whiteColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Radio(
                    value: "dark",
                    groupValue: ref.watch(profilescreenProvider).lightDark,
                    onChanged: (val) {
                      ref
                          .read(profilescreenProvider)
                          .changeLightAndDarkTheme(val!);
                    },
                    activeColor: AppColors.primaryColor,
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppAssets.system,
                    height: 170,
                  ),
                  Text(
                    getTranslated("System", context),
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: context.theme.colorTheme.whiteColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Radio(
                    value: "system",
                    groupValue: ref.watch(profilescreenProvider).lightDark,
                    onChanged: (val) {
                      ref
                          .read(profilescreenProvider)
                          .changeLightAndDarkTheme(val!);
                    },
                    activeColor: AppColors.primaryColor,
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
