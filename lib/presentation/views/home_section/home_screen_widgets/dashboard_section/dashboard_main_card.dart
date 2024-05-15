import 'package:etbank_business_app/extensions/build_context.dart';
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

class DashboardMainCard extends ConsumerWidget {
  const DashboardMainCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 196,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: context.theme.colorTheme.borderColor),
        color: context.theme.colorTheme.transparentToColor,
      ),
      child: Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "£1",
                          style: AppTextstyle.headingTextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: context.theme.colorTheme.normalTextColor),
                        ),
                        Container(
                          height: 21,
                          width: 21,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.tealColor),
                          child: const Center(
                            child: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: 21,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "GBP . Default Account",
                      style: AppTextstyle.bodyTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: context.theme.colorTheme.normalTextColor),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Image.asset(
                    AppAssets.roundukflag,
                    height: 45,
                  ),
                )
              ],
            ),
            29.spaceY,
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
                          context, 460, const RequestMoneyBottomSheetWidget(),
                          color: AppColors.black);
                    },
                  ),
                  MainCardOption(
                    image: AppAssets.moreicon,
                    title: "More",
                    onpress: () => showCommonModalSheet(
                        context,
                        450,
                        color: AppColors.black,
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
            30.spaceY,
            InfoTextWidget(
              marketPriceColor: context.theme.colorTheme.greyDescription,
              image: AppAssets.exchangeUsd,
              title: 'Exchanged to USD',
              subTitle: 'Today, 9:29 PM',
              price1: '-£1',
              price2: '+S1.36',
            ),
            // 10.spaceY,
            const InfoTextWidget(
              image: AppAssets.transferTo,
              title: 'Transfer to Brooklyn',
              price1: '-£1',
              subTitle: 'Today, 9:13 PM',
            ),
            // 10.spaceY,
            const InfoTextWidget(
              image: AppAssets.paymentFrom,
              title: 'Payment from jhon deo',
              price1: '-£1',
              subTitle: 'Today, 9:09 PM',
            ),
            20.spaceY,
          ],
        ),
      ),
    );
  }
}
