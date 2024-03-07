import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetStartedButton extends ConsumerWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 39,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70), color: AppColors.black),
      child: Center(
        child: Text(
          getTranslated("get_started", context),
          style: AppTextstyle.headingTextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
