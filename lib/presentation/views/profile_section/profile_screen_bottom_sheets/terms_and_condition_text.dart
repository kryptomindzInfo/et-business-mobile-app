import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class TermsAndConditionsText extends ConsumerWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 200),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: getTranslated("terms1", context),
                style: AppTextstyle.headingTextStyle(
                    color: AppColors.white.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "£49 ",
                style: AppTextstyle.headingTextStyle(
                    color: context.theme.colorTheme.yellowTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: getTranslated("terms2", context),
                style: AppTextstyle.headingTextStyle(
                    color: AppColors.white.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: getTranslated("terms3", context),
                style: AppTextstyle.headingTextStyle(
                    color: context.theme.colorTheme.yellowTextColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500))
          ])),
    );
  }
}
