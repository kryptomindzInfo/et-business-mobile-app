import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationLoginCommonButton extends ConsumerWidget {
  final Color? buttoncolor;
  final String? buttonTitle;
  final Color? buttonTitleColor;
  final VoidCallback? onpress;
  const RegistrationLoginCommonButton(
      {super.key,
      this.buttoncolor,
      this.buttonTitle,
      this.buttonTitleColor,
      this.onpress});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 54,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(104), color: buttoncolor),
        child: Center(
          child: Text(
            buttonTitle!,
            style: AppTextstyle.headingTextStyle(
                fontSize: 14, color: buttonTitleColor!),
          ),
        ),
      ),
    );
  }
}
