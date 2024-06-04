import 'package:etbank_business_app/extensions/build_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants/app_textstyle.dart';
import '../../../globals/button_color.dart';
import '../../../resources/localization/language_constrants.dart';

class CompanyIndividualTabsWidget extends ConsumerWidget {
  final provider;
  const CompanyIndividualTabsWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sendCurrencyPro = ref.read(provider);
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorTheme.tealToGrey,
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
                var sendingCurrencyProW = ref.watch(provider);
                return Container(
                  decoration: BoxDecoration(
                    color:
                        companyButtonColor(sendingCurrencyProW.companySelected),
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 44, vertical: 12),
                    child: Text(
                      getTranslated('company', context),
                      style: AppTextstyle.bodyTextStyle(
                        fontWeight: FontWeight.w500,
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
                var sendingCurrencyProW = ref.watch(provider);

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
                        fontWeight: FontWeight.w500,
                        color: companyButtonTextColor(
                            !ref.watch(provider).companySelected),
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
