import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/app_common_widgets.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/header_icon_with_text.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/parent_theme_scaffold.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/accounts_card.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/period_widget.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_bottom_sheets/statement_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/title_text.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/business_details_white_container_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';
import '../../common_widgets/app_common_appbar.dart';
import '../../common_widgets/common_button.dart';

class MonthlyStatementScreen extends ConsumerWidget {
  static const String routeName = 'monthly_statement';
  const MonthlyStatementScreen({super.key});

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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 28),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderIconWithTitle(
                    // imageicon: AppAssets.arrowLeft,
                    title: getTranslated("monthly_statement", context),
                  ),
                  64.spaceY,
                  BusinessDetailsWhiteContainerWidet(
                    padding: const EdgeInsets.fromLTRB(16, 11, 20, 11),
                    title: "PDF",
                    labelText: getTranslated("file_type", context),
                    icon: Image.asset(
                      AppAssets.iconArrowDownBlack,
                      height: 11,
                      width: 18,
                      color: context.theme.colorTheme.whiteColor,
                    ),
                  ),
                  32.spaceY,
                  TitleText(
                    title: getTranslated("accounts", context),
                  ),
                  16.spaceY,
                  AccountsCard(
                    title: "British Pound",
                    subtitle: "GBP . Default Account",
                    image: AppAssets.roundukflag,
                    widget: CommonButton(
                        borderRadius: 8,
                        title: getTranslated("select", context),
                        width: 66,
                        mainButtonColor:
                            context.theme.colorTheme.halfTealToGreen,
                        titleColor: context.theme.colorTheme.greenToWhite),
                  ),
                  32.spaceY,
                  TitleText(
                    title: getTranslated("period", context),
                  ),
                  16.spaceY,
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
                  90.spaceY,
                  SizedBox(
                    height: 48,
                    child: PrimaryButton(
                      color: true
                          ? context.theme.colorTheme.buttonColor
                          : context.theme.colorTheme.buttonDisabledColor,
                      text: Text(
                        getTranslated("get_statement", context),
                        style: AppTextstyle.bodyTextStyle(
                            color: context.theme.colorTheme.whiteAndBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {
                        statementBottomSheet();
                      },
                      minwidth: double.infinity,
                    ),
                  ),
                  16.spaceY,
                  SizedBox(
                    height: 48,
                    child: PrimaryButton(
                      color: context.theme.colorTheme.tealToGrey,
                      text: Text(
                        getTranslated("share_statement", context),
                        style: AppTextstyle.bodyTextStyle(
                            color: context.theme.colorTheme.blackAndWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      onPressed: () {},
                      minwidth: double.infinity,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
