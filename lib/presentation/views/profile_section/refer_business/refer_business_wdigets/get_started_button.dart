import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetStartedButton extends ConsumerWidget {
  final VoidCallback? onpress;
  final Color? color;
  final Color? titleColor;
  const GetStartedButton(
      {super.key, this.onpress, this.color, this.titleColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 39,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: color ?? context.theme.colorTheme.buttonColor),
        child: Center(
          child: Text(
            getTranslated("get_started", context),
            style: AppTextstyle.headingTextStyle(
                color: titleColor ?? context.theme.colorTheme.buttonTitleColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
