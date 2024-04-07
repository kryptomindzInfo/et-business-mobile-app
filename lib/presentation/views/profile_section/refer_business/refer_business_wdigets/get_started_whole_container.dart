import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_busines_share_link_screen.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/get_started_button.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetStartedSection extends ConsumerWidget {
  const GetStartedSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 84,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.tealColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28))),
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160,
              child: Text(
                getTranslated("free_instant_transfer", context),
                style: AppTextstyle.bodyTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  overflow: TextOverflow.clip,
                  color: context.theme.colorTheme.normalTextColor,
                ),
              ),
            ),
            GetStartedButton(
              onpress: () =>
                  Navigation.pushNamed(ReferBusinessShareLinkScreen.routeName),
            )
          ],
        ),
      ),
    );
  }
}
