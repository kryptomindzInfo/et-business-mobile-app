import 'package:etbank_business_app/constants/app_assets.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/navigation/navigation.dart';
import 'package:etbank_business_app/presentation/views/common_widgets/white_flexible_card.dart';
import 'package:etbank_business_app/presentation/views/invoice_and_request_screens/invoice_screen.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../constants/app_colors.dart';
import 'request_money_white_container_widget.dart';

class RequestMoneyBottomSheetWidget extends ConsumerWidget {
  const RequestMoneyBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.spaceY,
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              getTranslated('request_money', context),
              style: AppTextstyle.roboto(
                  fontSize: 18, color: context.theme.colorTheme.whiteColor),
            ),
          ),
          20.spaceY,
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: context.theme.colorTheme.bottomSheetColor),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
              child: Column(
                children: [
                  CommonWhiteFlexibleCard(
                    borderRadius: 12,
                    padding: const EdgeInsets.all(0),
                    widget: RequestMoneyWhiteContainerWidget(
                      titleColor: context.theme.colorTheme.whiteColor,
                      subTitlecolor: AppColors.grey,
                      color: context.theme.colorTheme.bottomSheetColor,
                      imageicon: Image.asset(
                        AppAssets.paymentLink,
                        // height: 20,
                      ), //AppAssets.paymentLink,
                      title: 'payment_link',
                      subtitle: 'share_a_link_and_get_paid_online',
                      onpress: () {},
                    ),
                  ),
                  8.spaceY,
                  CommonWhiteFlexibleCard(
                    borderRadius: 12,
                    padding: const EdgeInsets.all(0),
                    widget: RequestMoneyWhiteContainerWidget(
                      titleColor: context.theme.colorTheme.whiteColor,
                      subTitlecolor: AppColors.grey,
                      color: context.theme.colorTheme.bottomSheetColor,
                      imageicon: Image.asset(
                        AppAssets.invoice,
                        // height: 20,
                      ),
                      title: 'invoice',
                      subtitle: 'create_and_send_an_invoice',
                      onpress: () {
                        Navigation.pushNamed(InvoiceSreen.routeName);
                      },
                    ),
                  ),
                  8.spaceY,
                  CommonWhiteFlexibleCard(
                    borderRadius: 12,
                    padding: const EdgeInsets.all(0),
                    widget: RequestMoneyWhiteContainerWidget(
                      titleColor: context.theme.colorTheme.whiteColor,
                      subTitlecolor: AppColors.grey,
                      color: context.theme.colorTheme.bottomSheetColor,
                      imageicon: Image.asset(
                        AppAssets.cardReader,
                        // height: 20,
                      ),
                      title: 'card_reader',
                      subtitle: 'get_paid_with_cards',
                    ),
                  ),
                  8.spaceY,
                  CommonWhiteFlexibleCard(
                    borderRadius: 12,
                    padding: const EdgeInsets.all(0),
                    widget: RequestMoneyWhiteContainerWidget(
                      titleColor: context.theme.colorTheme.whiteColor,
                      subTitlecolor: AppColors.grey,
                      color: context.theme.colorTheme.bottomSheetColor,
                      imageicon: Image.asset(
                        AppAssets.qrCode,
                        height: 25,
                      ),
                      title: 'qr_code',
                      subtitle: 'show_to_get_paid_in_person',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
