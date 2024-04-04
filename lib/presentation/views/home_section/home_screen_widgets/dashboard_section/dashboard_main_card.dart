import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/common_bottom_sheet.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_bottom_sheets/more_option_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_textstyle.dart';
import '../../../common_widgets/see_all_widget.dart';
import '../../../invoice_and_request_screens/invoice_and_request_widgets/request_money_bottomsheet_widget.dart';
import '../home_info_card_text.dart';
import '../home_screen_main_card_options.dart';
import 'dashboard_main_info_card.dart';

class DashboardMainCard extends ConsumerWidget {
  const DashboardMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 196,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.tealColor),
        color: AppColors.transparent,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "£1",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white),
                        ),
                        Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.tealColor),
                          child: Center(
                            child: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 16,
                              color: AppColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white),
                    )
                  ],
                ),
                Image.asset(
                  AppAssets.ukflag,
                  height: 45,
                )
              ],
            ),
            10.spaceY,
            Container(
              margin: const EdgeInsets.only(left: 35, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MainCardOption(
                      image: AppAssets.sendicon, title: "Send"),
                  MainCardOption(
                    image: AppAssets.requesticon,
                    title: "Request",
                    onpress: () {
                      showCommonModalSheet(
                        700,
                        const RequestMoneyBottomSheetWidget(),
                      );
                    },
                  ),
                  MainCardOption(
                    image: AppAssets.moreicon,
                    title: "More",
                    onpress: () => showCommonModalSheet(
                        450,
                        const Padding(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          child: MoreOptionsBottomSheetWidget(),
                        )),
                  )
                ],
              ),
            ),
            20.spaceY,
            const SeeAllCommonWidget("Transactions", true),
            InfoTextWidget(),
            // 10.spaceY,
            InfoTextWidget(),
            // 10.spaceY,
            InfoTextWidget(),
            20.spaceY,
          ],
        ),
      ),
    );
  }
}
