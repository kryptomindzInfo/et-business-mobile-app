import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddCurrencyPairWidget extends ConsumerWidget {
  final VoidCallback? onpress;
  const AddCurrencyPairWidget({super.key, this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        160.spaceY,
        InkWell(
          onTap: onpress,
          child: Image.asset(
            AppAssets.addgreenbutton,
            height: 55,
          ),
        ),
        25.spaceY,
        Text(
          getTranslated("add_currency_pair", context),
          style: AppTextstyle.headingTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: AppColors.primaryColor),
        ),
        5.spaceY,
        Text(
          getTranslated("choose_currency_pair", context),
          style: AppTextstyle.headingTextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: context.theme.colorTheme.normalTextColor),
        )
      ],
    );
  }
}
