import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/profile_pic_widget.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import '../../../../providers/theme_provider.dart';

class HomeScreenHeader extends ConsumerWidget {
  final VoidCallback? onpress;
  final VoidCallback? onNotificationPress;
  const HomeScreenHeader({super.key, this.onpress, this.onNotificationPress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onpress,
            child: const ProfilePicWidget(
              image: AppAssets.profileicon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset(
              ref.watch(themeProvider).themeMode == ThemeMode.dark
                  ? AppAssets.appbarLogo
                  : AppAssets.appbarLogoDark,
              height: 40,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigation.pushNamed(ConverterCurrencyScreen.routeName);
                },
                child: Image.asset(
                  AppAssets.charticon,
                  height: 25,
                  color: context.theme.colorTheme.whiteColor,
                ),
              ),
              20.spaceX,
              InkWell(
                onTap: onNotificationPress,
                child: Image.asset(
                  AppAssets.notificationicon,
                  height: 25,
                  color: context.theme.colorTheme.whiteColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
