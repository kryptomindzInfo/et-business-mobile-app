import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
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
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: context.theme.colorTheme.businessDetailsContainer,
          border:
              Border.all(color: context.theme.colorTheme.transparentToYellow),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // alignment: Alignment.centerLeft,
              children: [
                TextField(
                  style: TextStyle(color: context.theme.colorTheme.whiteColor),
                  controller: controller,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    hintText: 'GBP',
                    hintStyle: TextStyle(
                        fontSize: 22,
                        color: context.theme.colorTheme.whiteColor),

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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'GBP : £1',
                    style: AppTextstyle.headingTextStyle(
                      color:
                          context.theme.colorTheme.whiteColor.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          150.spaceX,
          Expanded(
            child: TextField(
              style: TextStyle(color: context.theme.colorTheme.whiteColor),
              controller: controller,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                hintText: '£0',
                hintStyle: TextStyle(
                    fontSize: 22, color: context.theme.colorTheme.whiteColor),
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                // contentPadding: EdgeInsets.only(left: 15, top: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
