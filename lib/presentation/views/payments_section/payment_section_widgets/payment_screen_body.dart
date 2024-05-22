import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/payments_section/payment_section_widgets/payment_screen_chips.dart';
import 'package:etbank_business_app/presentation/views/payments_section/payment_section_widgets/transfer_main_white_card.dart';
import 'package:etbank_business_app/providers/payment_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaymentScreenBody extends ConsumerWidget {
  const PaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: ref.watch(paymentProvider).paymentScreenOption.map((e) {
            int index =
                ref.read(paymentProvider).paymentScreenOption.indexOf(e);
            return PaymentScreenChips(
              title: getTranslated(e["title"], context),
              onpress: () {
                ref.read(paymentProvider).selectedPaymntOptionsIndex(index);
              },
              color:
                  ref.watch(paymentProvider).paymentScreenOptionIndex == index
                      ? context.theme.colorTheme.activeChipColor
                      : context.theme.colorTheme.chipsColor,
              titleColor:
                  ref.watch(paymentProvider).paymentScreenOptionIndex == index
                      ? context.theme.colorTheme.whiteAndBlack
                      : context.theme.colorTheme.blackAndWhite,
            );
          }).toList()),
        ),
        45.spaceY,
        const TransferMainWhiteCard(),
        // 25.spaceY,
        // SeeAllCommonWidget(getTranslated("favourite", context), true),
        // 10.spaceY,
        // CommonWhiteFlexibleCard(
        //   color: AppColors.grey.withOpacity(0.5),
        //   widget: const Column(
        //     children: [

        //       TransferFavouriteProfileWidget(
        //         imageIcon: AppAssets.michel,
        //         title: "Michel",
        //       ),
        //       TransferFavouriteProfileWidget(
        //         imageIcon: AppAssets.evelyn,
        //         title: "Evelyn",
        //       ),
        //       TransferFavouriteProfileWidget(
        //         imageIcon: AppAssets.oliva,
        //         title: "Oliva",
        //       )
        //     ],
        //   ),
        // )
      ],
    );
  }
}
