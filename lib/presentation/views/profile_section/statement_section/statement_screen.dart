import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/statement_screen_main_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/app_common_appbar.dart';

class StatementScreen extends ConsumerWidget {
  static const String routeName = "statement_screen";
  const StatementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                HeaderIconWithTitle(
                  // imageicon: AppAssets.arrowLeft,
                  title: getTranslated("statements", context),
                ),
                45.spaceY,
                const StatementScreenMainCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
