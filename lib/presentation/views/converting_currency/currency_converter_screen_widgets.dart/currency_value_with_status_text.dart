import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyValueWithStatusText extends ConsumerWidget {
  final String? digitalValue;
  final String? status;
  const CurrencyValueWithStatusText(
      {super.key, this.digitalValue, this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 52,
      child: Column(
        children: [
          Text(
            digitalValue ?? "",
            style: AppTextstyle.bodyTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: context.theme.colorTheme.whiteAndBlack),
          ),
          5.spaceY,
          Text(
            getTranslated(status!, context),
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
