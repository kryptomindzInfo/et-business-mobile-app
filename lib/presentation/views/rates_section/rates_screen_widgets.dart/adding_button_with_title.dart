import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddingButtonWithTitle extends ConsumerWidget {
  final VoidCallback onpress;
  const AddingButtonWithTitle({super.key, required this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.only(left: 30, top: 30),
        child: Row(
          children: [
            Image.asset(
              AppAssets.addingicon,
              height: 40,
            ),
            10.spaceX,
            Text(
              getTranslated("add_currency_pair", context),
              style: AppTextstyle.bodyTextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColors.white,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
