import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_card_common_widget.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/see_all_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_bottom_sheets/light_dark_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/profile_screen_widgets/profile_info_text_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';

class ProfileInfoCard extends ConsumerWidget {
  const ProfileInfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SeeAllCommonWidget("Profile", true),
        5.spaceY,
        InfoCardCommonWidget(
          color: AppColors.transparent,
          child: Column(
            children: [
              ProfileInfoTextWidget(
                image: AppAssets.personalprofileicon,
                title: getTranslated("personal_profile", context),
                onpress: () {
                  showModalBottomSheet(
                    backgroundColor: AppColors.transparent,
                    context: context,
                    builder: (context) => const ThemeBottomSheet(),
                  );
                },
              ),
              ProfileInfoTextWidget(
                image: AppAssets.businessprofileicon,
                title: getTranslated("business_profile", context),
              ),
              ProfileInfoTextWidget(
                image: AppAssets.merchantprofileicon,
                title: getTranslated("merchant_profile", context),
              ),
              ProfileInfoTextWidget(
                image: AppAssets.statementicon,
                title: getTranslated("statement", context),
                onpress: () {
                  print("dddddddd");
                  Navigation.pushNamed(StatementScreen.routeName);
                },
              ),
              ProfileInfoTextWidget(
                image: AppAssets.billingicon,
                title: getTranslated("billing", context),
              ),
            ],
          ),
        )
      ],
    );
  }
}
