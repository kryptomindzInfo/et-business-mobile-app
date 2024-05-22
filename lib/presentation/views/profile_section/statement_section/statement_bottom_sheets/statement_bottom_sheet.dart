import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigator_key.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/statement_bottom_sheet_header.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/statement_container.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../../../resources/localization/language_constrants.dart';

statementBottomSheet() {
  return showModalBottomSheet(
    context: appContext,
    isScrollControlled: true,
    builder: (context) => Container(
      height: 700,
      decoration: BoxDecoration(
        color: context.theme.colorTheme.bottomSheetColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.spaceY,
            const StatementBottomSheetHeader(),
            15.spaceY,
            const StatementContainer(),
            45.spaceY,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.tealColor, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.appbarLogo,
                              width: 105,
                              height: 32,
                            ),
                            20.spaceY,
                            Text(
                              getTranslated(
                                  "Transaction from Feb 1, 2023 to Feb 1, 2024",
                                  context),
                              style: AppTextstyle.bodyTextStyle(
                                  fontSize: 7,
                                  color:
                                      context.theme.colorTheme.normalTextColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              getTranslated("statement", context),
                              style: AppTextstyle.bodyTextStyle(
                                  fontSize: 16,
                                  color:
                                      context.theme.colorTheme.normalTextColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Generated on Feb 1, 2024",
                              style: AppTextstyle.bodyTextStyle(
                                  fontSize: 8,
                                  color:
                                      context.theme.colorTheme.normalTextColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            12.spaceY,
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset(
                color: context.theme.colorTheme.yellowToGreen,
                AppAssets.export,
                height: 22,
                width: 22,
              ),
            )
            // PrimaryButton(
            //   color: context.theme.colorTheme.buttonColor,
            //   text: Text(
            //     getTranslated("export", context),
            //     style: AppTextstyle.bodyTextStyle(
            //       color: context.theme.colorTheme.whiteAndBlack,
            //     ),
            //   ),
            //   onPressed: () {},
            //   minwidth: 250,
            // )
          ],
        ),
      ),
    ),
  );
}
