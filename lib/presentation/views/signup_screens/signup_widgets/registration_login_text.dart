import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';
import '../../../../resources/localization/language_constrants.dart';

class RegistrationLoginTextWidget extends ConsumerWidget {
  const RegistrationLoginTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        10.spaceY,
        Container(
          margin: EdgeInsets.only(left: 35, right: 0),
          child: Text(
            getTranslated("financial_freedom", context),
            style: AppTextstyle.headingTextStyle(
                color: context.theme.colorTheme.normalTextColor,
                fontSize: 35,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.clip),
          ),
        ),
        10.spaceY,
        Container(
          margin: EdgeInsets.only(left: 30, right: 25),
          child: Text(
            getTranslated("financial_description", context),
            textAlign: TextAlign.center,
            style: AppTextstyle.headingTextStyle(
                color: context.theme.colorTheme.normalTextColor,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                overflow: TextOverflow.clip),
          ),
        )
      ],
    );
  }
}
