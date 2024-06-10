import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/profile_section/refer_business/refer_business_wdigets/refer_business_main_card.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../common_widgets/app_common_appbar.dart';

class ReferBusinessScreen extends ConsumerWidget {
  static const String routeName = "referbusiness_screen";
  const ReferBusinessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: CommonAppBar(
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
            // etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                HeaderIconWithTitle(
                  // imageicon: AppAssets.arrowLeft,
                  title: getTranslated("refer_business", context),
                ),
                28.spaceY,
                const ReferBusinessMainCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
