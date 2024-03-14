import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_bottom_sheets/add_accounts_btm_sheets_widget/all_accounts_card.dart';
import 'package:etbank_business_app/presentation/views/home_section/home_screen_bottom_sheets/add_accounts_btm_sheets_widget/header_section.dart';
import 'package:etbank_business_app/presentation/views/profile_section/statement_section/statement_screen_widgets/accounts_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_textstyle.dart';

class AddAccountsBottomSheet extends ConsumerWidget {
  const AddAccountsBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          20.spaceY,
          AddAccountsBSheaderSection(),
          15.spaceY,
          AllAccountsCardBS(),
          15.spaceY,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.grey.withOpacity(0.5)),
            child: Column(
              children: [
                AccountsCard(
                  title: "British Pound",
                  subtitle: "GBP, Default Account",
                  image: AppAssets.roundukflag,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "£1",
                        style: AppTextstyle.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "£0",
                        style: AppTextstyle.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                AccountsCard(
                  title: "Euro",
                  subtitle: "EUR",
                  image: AppAssets.euroflag,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "€0",
                        style: AppTextstyle.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "£0",
                        style: AppTextstyle.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                AccountsCard(
                  title: "US Dollar",
                  subtitle: "USD",
                  image: AppAssets.usdflag,
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$1.36",
                        style: AppTextstyle.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "£0.99",
                        style: AppTextstyle.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                8.spaceY
              ],
            ),
          )
        ],
      ),
    );
  }
}
