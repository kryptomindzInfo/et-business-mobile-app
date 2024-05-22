import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/icon_with_title.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_bottom_sheets/add_account_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoreOptionsBottomSheetWidget extends ConsumerWidget {
  const MoreOptionsBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        22.spaceY,
        IconWithTitle(
          imageicon: AppAssets.transactioninfoicon,
          title: getTranslated("exchange", context),
          titleColor: context.theme.colorTheme.iconWithTitleColor,
        ),
        IconWithTitle(
          imageicon: AppAssets.addmoneyicon,
          title: getTranslated("add_money", context),
          titleColor: context.theme.colorTheme.iconWithTitleColor,
        ),
        InkWell(
          onTap: () {
            Navigation.pushNamed(StatementScreen.routeName);
          },
          child: IconWithTitle(
            imageicon: AppAssets.statementicon,
            title: getTranslated("statements", context),
            titleColor: context.theme.colorTheme.iconWithTitleColor,
          ),
        ),
        IconWithTitle(
          imageicon: AppAssets.detailsicon,
          title: getTranslated("details", context),
          titleColor: context.theme.colorTheme.iconWithTitleColor,
        ),
        IconWithTitle(
          imageicon: AppAssets.plus,
          title: getTranslated("add_new_accounts", context),
          titleColor: context.theme.colorTheme.iconWithTitleColor,
          onpress: () {
            Navigator.pop(context);
            // Navigation.pop();
            showCommonModalSheet(
              color: context.theme.colorTheme.bottomSheetColor,
              context,
              500,
              const AddAccountsBottomSheet(),
            );
          },
        )
      ],
    );
  }
}
