import 'package:etbank_business_app/constants/app_api_paths.dart';
import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/common_icon_title_icon_button.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/choose_document_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpSubmitDocumentScreen extends ConsumerWidget {
  static const String routeName = "submit_doc_screen";
  const SignUpSubmitDocumentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.backgroundColor,
        appBar: const CommonAppBar(
          etBankLogo: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderIconWithTitle(
                title: getTranslated("documentation", context),
                description: getTranslated("submit_proof", context),
              ),
              30.spaceY,
              Text(
                getTranslated("to_do", context),
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 16,
                    color:
                        context.theme.colorTheme.whiteColor.withOpacity(0.8)),
              ),
              10.spaceY,
              CommonWhiteFlexibleCard(
                color: context.theme.colorTheme.businessDetailsContainer,
                border: Border.all(
                    color: context.theme.colorTheme.transparentToTeal),
                borderRadius: 8,
                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                widget: Column(
                  children: [
                    CommonIconTitleIconButton(
                      iconImage: AppAssets.letterhead,
                      title: getTranslated("shareholder_structure", context),
                      isForwardIcon: true,
                      onpress: () {
                        Navigation.pushNamed(ChooseDocumentScreen.routeName);
                      },
                    ),
                    CommonIconTitleIconButton(
                      iconImage: AppAssets.letterhead,
                      title: getTranslated("director_structure", context),
                      onpress: () {},
                      isForwardIcon: true,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
