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
                text:
                    "Your first month on the plan will be free. At the end of the trial period you will be transitioned to monthly plan. Plastic and virtual cards are included in all our plans. If you order a metal card (subject to availability in your country), a cancellation fee of £49 will be charged if you don't stay on your paid plan for a minimum of 3 months.",
                style: AppTextstyle.headingTextStyle(
                    color: AppColors.white.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            TextSpan(
                text: "Terms & Conditions",
                style: AppTextstyle.headingTextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500))
          ])),
    );
  }
}
