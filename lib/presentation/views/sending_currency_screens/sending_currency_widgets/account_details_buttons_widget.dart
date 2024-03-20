import 'package:etbank_business_app/constants/app_colors.dart';
import 'package:etbank_business_app/constants/app_textstyle.dart';
import 'package:etbank_business_app/providers/sending_currency_provider.dart';
import 'package:etbank_business_app/resources/localization/language_constrants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../globals/button_color.dart';

class AccountDetailsButtonsWidget extends ConsumerWidget {
  const AccountDetailsButtonsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sendCurrencyPro = ref.read(sendingCurrencyProvider);

    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(70),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                sendCurrencyPro.setCompanySelected(true);
              },
              child: Consumer(builder: (context, ref, child) {
                var sendingCurrencyProW = ref.watch(sendingCurrencyProvider);
                return Container(
                  decoration: BoxDecoration(
                    color:
                        companyButtonColor(sendingCurrencyProW.companySelected),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(44, 12, 44, 12),
                    child: Text(
                      getTranslated('company', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: companyButtonTextColor(
                            sendingCurrencyProW.companySelected),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                sendCurrencyPro.setCompanySelected(false);
              },
              child: Consumer(builder: (context, ref, child) {
                var sendingCurrencyProW = ref.watch(sendingCurrencyProvider);

                return Container(
                  decoration: BoxDecoration(
                    color: companyButtonColor(
                        !sendingCurrencyProW.companySelected),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(44, 12, 44, 12),
                    child: Text(
                      getTranslated('individual', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontSize: 16,
                        color: companyButtonTextColor(!ref
                            .watch(sendingCurrencyProvider)
                            .companySelected),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
