import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/custom_radio_button_widget.dart';
import 'package:etbank_business_app/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';
import '../../../../resources/localization/language_constrants.dart';

class ThemeBottomSheet extends ConsumerWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeRead = ref.read(themeProvider.notifier);
    final themeWatch = ref.watch(themeProvider);
    return Container(
      height: 310,
      padding: const EdgeInsets.only(left: 10, right: 10),
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
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
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
              ThemeItem(
                onTap: () => themeRead.changeTheme(ThemeMode.light),
                isSelected: themeWatch.themeMode == ThemeMode.light,
                title: "Light",
                image: AppAssets.light,
              ),
              ThemeItem(
                onTap: () => themeRead.changeTheme(ThemeMode.dark),
                isSelected: themeWatch.themeMode == ThemeMode.dark,
                title: "Dark",
                image: AppAssets.dark,
              ),
              ThemeItem(
                onTap: () => themeRead.changeTheme(ThemeMode.system),
                isSelected: themeWatch.themeMode == ThemeMode.system,
                title: "System",
                image: AppAssets.system,
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class ThemeItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String image;
  final bool isSelected;
  const ThemeItem(
      {super.key,
      this.onTap,
      required this.title,
      required this.image,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(image, height: 170),
          Text(
            getTranslated(title, context),
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                color: context.theme.colorTheme.whiteColor,
                fontWeight: FontWeight.w600),
          ),
          10.spaceY,
          CustomRadioButtonWidget(isSelected: isSelected, onTap: onTap)
        ],
      ),
    );
  }
}
