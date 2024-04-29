import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenSearchTextfield extends ConsumerWidget {
  const HomeScreenSearchTextfield({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.mateBlackColor),
      child: TextField(
        decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.search,
                color: AppColors.greywhite.withOpacity(0.5),
                size: 18,
              ),
            ),
            hintText: "Search",
            hintStyle: AppTextstyle.bodyTextStyle(
              color: AppColors.greywhite.withOpacity(0.5),
            )),
      ),
    );
  }
}
