import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/bottom_navigation_bar.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/converting_currency/currency_converter_screen_widgets.dart/currency_sell_detail_texts.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common_widgets/app_common_appbar.dart';
import '../currency_converter_screen_widgets.dart/currency_sell_header.dart';

class CurrencySellScreen extends ConsumerWidget {
  static const String routeName = 'sell_screen';
  const CurrencySellScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ParentThemeScaffold(
      child: BackgroundImageWidget(
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: const CommonAppBar(
            etBankLogo: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                28.spaceY,
                const CurrencySellHeader(),
                25.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  color: context.theme.colorTheme.whiteTohalfWhite,
                  border: Border.all(color: AppColors.transparent),
                  widget: const Column(
                    children: [
                      CurrencySellDetailTexts(
                        title: "Price",
                        value: "£1=\$1.3598",
                      ),
                      CurrencySellDetailTexts(
                        title: "Selling",
                        value: "£1",
                      ),
                      CurrencySellDetailTexts(
                        title: "Fee",
                        value: "No Fee",
                      ),
                      CurrencySellDetailTexts(
                        title: "You will recieve",
                        value: "\$1.35",
                      ),
                      CurrencySellDetailTexts(
                        title: "From",
                        value: "GBP",
                      ),
                    ],
                  ),
                ),
                25.spaceY,
                CommonWhiteFlexibleCard(
                  borderRadius: 12,
                  color: context.theme.colorTheme.whiteTohalfWhite,
                  border: Border.all(
                    color: context.theme.colorTheme.transparentToTeal,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                  widget: const CurrencySellDetailTexts(
                    title: "To",
                    value: "USD",
                  ),
                ),
                // const CurrencySellGreenCard(),
                170.spaceY,
                PrimaryButton(
                    height: 38,
                    color: true
                        ? context.theme.colorTheme.buttonColor
                        : context.theme.colorTheme.buttonDisabledColor,
                    minwidth: 280,
                    text: Text(
                      getTranslated("continue", context),
                      style: AppTextstyle.bodyTextStyle(
                        color: AppColors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigation.pushNamed(BaseBottomNavBar.routeName);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
