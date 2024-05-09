import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/providers/currency_coverter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyExchangeTextfield extends ConsumerWidget {
  final TextEditingController? controller;
  const CurrencyExchangeTextfield({super.key, this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 97,
      width: double.infinity,
      decoration: BoxDecoration(
          border:
              Border.all(color: context.theme.colorTheme.textfieldborderColor),
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // alignment: Alignment.centerLeft,
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              hintText: 'GBP',

              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              // contentPadding: EdgeInsets.only(left: 15, top: 28),
            ),
            onChanged: (value) {
              ref.watch(currencyScreenProvider).activateButtonFtn();
            },
          ),
          // Positioned(
          //   left: 18,
          //   bottom: 30,
          //   child: Text(
          //     'GPB',
          //     style: AppTextstyle.bodyTextStyle(
          //       color: context.theme.colorTheme.normalTextColor,
          //       fontSize: 29,
          //       fontWeight: FontWeight.w400,
          //     ),
          //   ),
          // ),
          Text(
            'GBP : £1',
            style: AppTextstyle.headingTextStyle(
              color: context.theme.colorTheme.subGrayColor,
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
