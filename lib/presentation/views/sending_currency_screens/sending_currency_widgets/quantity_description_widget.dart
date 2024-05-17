import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/extensions/sized_box.dart';
import 'package:etbank_business_app/presentation/views/signup_screens/signup_widgets/text_field_widget.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/invoice_request_provider.dart';

class QuantityAndDescriptionWidget extends ConsumerWidget {
  const QuantityAndDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var invoiceRequestProviderW = ref.watch(invoiceRequestProvider);
    var invoiceRequestProviderR = ref.read(invoiceRequestProvider);

    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.tealColor, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getTranslated('quantity', context),
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16, color: AppColors.grey),
                ),
                4.spaceY,
                Text(
                  getTranslated('1', context),
                  style: AppTextstyle.bodyTextStyle(
                      fontSize: 16, color: AppColors.white),
                ),
                // Row(
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         invoiceRequestProviderR.decrementQuantity();
                //       },
                //       child: Text(
                //         getTranslated('-', context),
                //         style: AppTextstyle.bodyTextStyle(
                //             fontSize: 16, color: AppColors.grey),
                //       ),
                //     ),
                //     16.spaceX,
                //     Text(
                //       getTranslated(
                //           invoiceRequestProviderW.quantity.toString(), context),
                //       style: AppTextstyle.bodyTextStyle(
                //           fontSize: 16, color: AppColors.black),
                //     ),
                //     16.spaceX,
                //     GestureDetector(
                //       onTap: () {
                //         invoiceRequestProviderR.incrementQuantity();
                //       },
                //       child: Text(
                //         getTranslated('+', context),
                //         style: AppTextstyle.bodyTextStyle(
                //             fontSize: 16, color: AppColors.grey),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        16.spaceX,
        Expanded(
          child: SizedBox(
            child: TextFieldWidget(
              // contentPadding: const EdgeInsets.all(10),
              hintText: getTranslated('description', context),
              style: const TextStyle(color: AppColors.white),
              hintStyle: AppTextstyle.headingTextStyle(
                  color: AppColors.grey, fontSize: 16),
              // bottomContentPadding: 10,
            ),
          ),
        ),
      ],
    );
  }
}
