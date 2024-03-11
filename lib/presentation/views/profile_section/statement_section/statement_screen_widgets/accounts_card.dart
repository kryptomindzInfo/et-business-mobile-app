import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/get_started_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountsCard extends ConsumerWidget {
  const AccountsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 71,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AppAssets.roundukflag,
            height: 32,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "British Pound",
                style: AppTextstyle.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "GBP . Default Account",
                style: AppTextstyle.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black.withOpacity(0.6)),
              ),
            ],
          ),
          CommonButton(
            title: getTranslated("select", context),
            width: 66,
            mainButtonColor: AppColors.tealColor.withOpacity(0.5),
            titleColor: AppColors.tealColor,
          )
        ],
      ),
    );
  }
}
