import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllAccountsCardBS extends ConsumerWidget {
  const AllAccountsCardBS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 74,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.grey.withOpacity(0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.allaccountsicon,
                    height: 35,
                  ),
                  15.spaceX,
                  Text(
                    getTranslated("all_accounts", context),
                    style: AppTextstyle.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              "£2",
              style: AppTextstyle.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.white),
            ),
          )
        ],
      ),
    );
  }
}
