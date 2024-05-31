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
  final String? title;
  final VoidCallback? onpress;
  final BorderRadiusGeometry? borderRadius;
  const GetStartedSection(
      {super.key, this.title, this.onpress, this.borderRadius});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 84,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.colorTheme.tealToYellow,
        borderRadius: borderRadius ??
            const BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        padding: const EdgeInsets.only(top: 25, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 180,
              child: Text(
                title ?? getTranslated("free_instant_transfer", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    overflow: TextOverflow.clip,
                    color: context.theme.colorTheme.whiteWithOpactiy),
              ),
            ),
            GetStartedButton(
              color: context.theme.colorTheme.yellowToBlackish,
              titleColor: context.theme.colorTheme.bottomSheetColor,
              onpress: onpress ??
                  () => Navigation.pushNamed(
                      ReferBusinessShareLinkScreen.routeName),
            )
          ],
        ),
      ),
    );
  }
}
