import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/see_all_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/accounts_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/period_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_bottom_sheets/statement_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/title_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_details_white_container_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class MonthlyStatementScreen extends ConsumerWidget {
  static const String routeName = 'monthly_statement';
  const MonthlyStatementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackgroundImageWidget(
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderIconWithTitle(
                  imageicon: AppAssets.arrowLeft,
                  title: getTranslated("monthly_statement", context),
                ),
                20.spaceY,
                BusinessDetailsWhiteContainerWidet(
                    title: "PDF",
                    labelText: getTranslated("file_type", context),
                    icon: Image.asset(
                      AppAssets.iconArrowDownBlack,
                      height: 11,
                    )),
                30.spaceY,
                TitleText(
                  title: getTranslated("accounts", context),
                ),
                20.spaceY,
                AccountsCard(),
                30.spaceY,
                TitleText(
                  title: getTranslated("period", context),
                ),
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectPeriodCalenderWidget(
                      title: getTranslated("from", context),
                      date: "Feb 2024",
                    ),
                    SelectPeriodCalenderWidget(
                      title: getTranslated("to", context),
                      date: "Feb 2024",
                    ),
                  ],
                ),
                100.spaceY,
                PrimaryButton(
                  color: AppColors.primaryColor,
                  text: Text(
                    getTranslated("get_statement", context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    statementBottomSheet();
                  },
                  minwidth: double.infinity,
                ),
                10.spaceY,
                PrimaryButton(
                  color: AppColors.darkGreen,
                  text: Text(
                    getTranslated("share_statement", context),
                    style: AppTextstyle.bodyTextStyle(
                        color: AppColors.primaryColor.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  minwidth: double.infinity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
