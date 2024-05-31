import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenSearchTextfield extends ConsumerWidget {
  final Color? color;
  final Color? titleColor;
  const HomeScreenSearchTextfield({super.key, this.color, this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 38,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: color ?? AppColors.transparent,
          border:
              Border.all(color: context.theme.colorTheme.transparentToTeal)),
      child: TextField(
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.only(bottom: 19),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Image.asset(
                AppAssets.searchImage2x,
              ),
            ),
            // prefixIcon: Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: Icon(
            //     Icons.search,
            //     color: color != null
            //         ? context.theme.colorTheme.whiteColor.withOpacity(0.6)
            //         : context.theme.colorTheme.whiteColor.withOpacity(0.7),
            //     size: 18,
            //   ),
            // ),
            hintText: "Search",
            hintStyle: AppTextstyle.bodyTextStyle(
              fontSize: 12, color: AppColors.iconGreyColor,
              // color: titleColor != null
              //     ? context.theme.colorTheme.whiteColor.withOpacity(0.6)
              //     : context.theme.colorTheme.whiteColor.withOpacity(0.7),
            )),
      ),
    );
  }
}
