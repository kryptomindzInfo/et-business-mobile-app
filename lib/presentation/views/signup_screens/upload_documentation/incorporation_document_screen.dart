import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/review_screen.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/upload_doc_widgets/upload_doc_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_assets.dart';
import 'upload_doc_widgets/provide_valid_doc_widget.dart';

class IncorporationDocumentScreen extends ConsumerWidget {
  static const String routeName = "incorporation_screen";
  const IncorporationDocumentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: Scaffold(
        backgroundColor: context.theme.colorTheme.backgroundColor,
        appBar: CommonAppBar(
          etBankLogo: true,
          leading: Padding(
            padding: const EdgeInsets.all(17.0),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                AppAssets.arrowLeftShort,
                color: context.theme.colorTheme.whiteColor,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                HeaderIconWithTitle(
                  title: getTranslated("incorporation_doc", context),
                  description: getTranslated("doc_clearly_describing", context),
                ),
                20.spaceY,
                const ProviderValidDocWidget(),
                20.spaceY,
                const UploadDocWidget(),
                68.spaceY,
                CommonButton(
                  title: getTranslated("continue", context),
                  mainButtonColor: true
                      ? context.theme.colorTheme.buttonColor
                      : context.theme.colorTheme.buttonDisabledColor,
                  titleColor: AppColors.black,
                  onpress: () {
                    Navigation.pushNamed(ReviewScreen.routeName);
                  },
                  width: 288,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
