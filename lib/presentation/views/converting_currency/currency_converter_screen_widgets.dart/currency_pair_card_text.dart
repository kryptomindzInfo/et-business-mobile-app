import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyPairCardText extends ConsumerWidget {
  final String? title;
  final String? subtitle;
  const CurrencyPairCardText({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: context.theme.colorTheme.whiteAndBlack),
          ),
          Text(
            subtitle!,
            style: AppTextstyle.bodyTextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: context.theme.colorTheme.whiteAndBlack),
          )
        ],
      ),
    );
  }
}
