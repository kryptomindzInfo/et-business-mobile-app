import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_card_common_widget.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/info_icon_title_subtitle_text.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/monthly_statement_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatementScreenMainCard extends ConsumerWidget {
  const StatementScreenMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoCardCommonWidget(
      color: AppColors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          children: [
            InfoIconTitleSubtitleText(
              imageicon: AppAssets.monthlystatement,
              title: getTranslated("monthly_statement", context),
              subtitle: getTranslated("monthly_statement_sub", context),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
              onpress: () {
                Navigation.pushNamed(MonthlyStatementScreen.routeName);
              },
            ),
            InfoIconTitleSubtitleText(
              imageicon: AppAssets.transaction,
              title: getTranslated("transaction_statement", context),
              subtitle: getTranslated("transaction_statement_sub", context),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
            ),
            InfoIconTitleSubtitleText(
              imageicon: AppAssets.balancestatement,
              title: getTranslated("statement_balance", context),
              subtitle: getTranslated("statement_balance_sub", context),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
            ),
            InfoIconTitleSubtitleText(
              imageicon: AppAssets.accountconfirmation,
              title: getTranslated("account_confirmation", context),
              subtitle: getTranslated("account_confirmation_sub", context),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
            ),
            InfoIconTitleSubtitleText(
              imageicon: AppAssets.auditicon,
              title: getTranslated("audit_confirmation", context),
              subtitle: getTranslated("audit_confirmation_sub", context),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
