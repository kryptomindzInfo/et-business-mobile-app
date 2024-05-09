import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/business_details/get_more_from_business_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BusinessDetailsBottomSheet extends ConsumerWidget {
  const BusinessDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.spaceY,
            Text(
              getTranslated("confirmation", context),
              style: AppTextstyle.headingTextStyle(
                  color: context.theme.colorTheme.normalTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            20.spaceY,
            Text(
              getTranslated("confirmation_description", context),
              style: AppTextstyle.headingTextStyle(
                  color: context.theme.colorTheme.normalTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  overflow: TextOverflow.clip),
            ),
            20.spaceY,
            CommonButton(
              mainButtonColor: context.theme.colorTheme.buttonColor,
              titleColor: context.theme.colorTheme.buttonTitleColor,
              title: getTranslated("submit", context),
              width: 320,
              onpress: () {
                Navigation.pushNamed(GetMoreFromBusinessScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
