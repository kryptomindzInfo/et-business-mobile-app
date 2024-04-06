import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenSearchTextfield extends ConsumerWidget {
  final Color? color;
  const HomeScreenSearchTextfield({super.key, this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 38,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: color ?? AppColors.transparent,
          border: Border.all(color: context.theme.colorTheme.borderColor)),
      child: TextField(
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(bottom: 19),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: color != null
                    ? AppColors.black.withOpacity(0.6)
                    : AppColors.greywhite.withOpacity(0.7),
                size: 18,
              ),
            ),
            hintText: "Search",
            hintStyle: AppTextstyle.bodyTextStyle(
              fontSize: 12,
              color: color != null
                  ? AppColors.black.withOpacity(0.6)
                  : AppColors.greywhite.withOpacity(0.7),
            )),
      ),
    );
  }
}
