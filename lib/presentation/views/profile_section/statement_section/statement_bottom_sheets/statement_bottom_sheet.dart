import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/primary_button.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/statement_bottom_sheet_header.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/statement_container.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';

statementBottomSheet() {
  return showModalBottomSheet(
    context: appContext,
    isScrollControlled: true,
    builder: (context) => Container(
      height: 700,
      // width: double.infinity,
      color: AppColors.black,
      child: Column(
        children: [
          20.spaceY,
          StatementBottomSheetHeader(),
          15.spaceY,
          StatementContainer(),
          20.spaceY,
          PrimaryButton(
            color: context.theme.colorTheme.buttonColor,
            text: Text(
              getTranslated("export", context),
              style: AppTextstyle.bodyTextStyle(
                color: context.theme.colorTheme.whiteAndBlack,
              ),
            ),
            onPressed: () {},
            minwidth: 250,
          )
        ],
      ),
    ),
  );
}
