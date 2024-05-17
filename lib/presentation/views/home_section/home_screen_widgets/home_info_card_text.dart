import 'package:etbank_business_app/presentation/views/common_widgets/icon_container.dart';
import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/app_textstyle.dart';

class InfoTextWidget extends ConsumerWidget {
  final Color? marketPriceColor;
  final String image;
  final String title;
  final String subTitle;
  final String price1;
  final String? price2;
  const InfoTextWidget(
      {super.key,
      this.marketPriceColor,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.price1,
      this.price2});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconContainer(
                // image: AppAssets.transactioninfoicon,
                image: image,
              ),
              15.spaceX,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 18,
                        color: context.theme.colorTheme.normalTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  5.spaceY,
                  Text(
                    subTitle,
                    style: AppTextstyle.bodyTextStyle(
                        fontSize: 14,
                        color: context.theme.colorTheme.greyDescription,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                price1,
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 18,
                    color: context.theme.colorTheme.normalTextColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                // "+\$1.36",
                price2 ?? '',
                style: AppTextstyle.bodyTextStyle(
                    fontSize: 14,
                    color: marketPriceColor ??
                        context.theme.colorTheme.normalTextColor,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
