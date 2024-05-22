import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/common_icon_title_icon_button.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/incorporation_document_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecommendedWidget extends ConsumerWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            getTranslated("recommended", context),
            style: AppTextstyle.bodyTextStyle(
                color: context.theme.colorTheme.normalTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        ),
        5.spaceY,
        CommonWhiteFlexibleCard(
          color: context.theme.colorTheme.businessDetailsContainer,
          widget: Column(
            children: [
              CommonIconTitleIconButton(
                iconImage: AppAssets.letterhead,
                title: getTranslated("registry_extract", context),
                onpress: () {},
                isForwardIcon: true,
              ),
              CommonIconTitleIconButton(
                iconImage: AppAssets.letterhead,
                title: getTranslated("incorporation_doc", context),
                onpress: () {
                  Navigation.pushNamed(IncorporationDocumentScreen.routeName);
                },
                isForwardIcon: true,
              )
            ],
          ),
        )
      ],
    );
  }
}
