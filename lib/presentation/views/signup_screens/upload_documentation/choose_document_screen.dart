import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_appbar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/upload_doc_widgets/other_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/upload_doc_widgets/provide_valid_doc_widget.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/upload_documentation/upload_doc_widgets/recommended_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChooseDocumentScreen extends ConsumerWidget {
  static const String routeName = "choose_doc_screen";
  const ChooseDocumentScreen({super.key});

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderIconWithTitle(
                  title: getTranslated("choose_doc", context),
                  description: getTranslated("select_doc_shareholder", context),
                ),
                20.spaceY,
                const ProviderValidDocWidget(),
                20.spaceY,
                const RecommendedWidget(),
                20.spaceY,
                const OtherWidget(),
                20.spaceY,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
